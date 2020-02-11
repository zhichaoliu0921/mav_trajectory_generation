//
// Created by zhichao on 2/7/20.
//
#include <mav_trajectory_generation/polynomial_optimization_linear.h>
#include <mav_trajectory_generation/polynomial_optimization_nonlinear.h>
#include <mav_trajectory_generation/trajectory.h>
#include <iostream>
#include <plotty/matplotlibcpp.hpp>


int main(int argc, char **argv) {

    mav_trajectory_generation::Vertex::Vector vertices;
    const int dimension = 3;
    const int derivative_to_optimize = mav_trajectory_generation::derivative_order::JERK;
    mav_trajectory_generation::Vertex start(dimension), middle(dimension), end(dimension);

    start.makeStartOrEnd(Eigen::Vector3d(0,0,1), derivative_to_optimize);
    vertices.push_back(start);

    middle.addConstraint(mav_trajectory_generation::derivative_order::POSITION, Eigen::Vector3d(1,1,1));
    middle.addConstraint(mav_trajectory_generation::derivative_order::ACCELERATION, Eigen::Vector3d(2,2,0));
    vertices.push_back(middle);

    end.makeStartOrEnd(Eigen::Vector3d(2,1,2), derivative_to_optimize);
    vertices.push_back(end);

    std::vector<double> segment_times;
    const double v_max = 10.0;
    const double a_max = 10.0;
    segment_times = estimateSegmentTimes(vertices, v_max, a_max);

    const int N = 8;
    mav_trajectory_generation::PolynomialOptimization<N> opt(dimension);
    opt.setupFromVertices(vertices, segment_times, derivative_to_optimize);
    opt.solveLinear();


    mav_trajectory_generation::Segment::Vector segments;
    opt.getSegments(&segments);

    mav_trajectory_generation::Trajectory trajectory;
    opt.getTrajectory(&trajectory);

    // Single sample:
    double sampling_time = 4.0;
    int derivative_order = mav_trajectory_generation::derivative_order::POSITION;
    int velocity_order = mav_trajectory_generation::derivative_order::VELOCITY;
    int acc_order = mav_trajectory_generation::derivative_order::ACCELERATION;
    Eigen::VectorXd sample = trajectory.evaluate(sampling_time, derivative_order);
    std::cout << "sample =" <<sample << std::endl;

    // Sample range:
    double t_start = 0.0;
    double t_end = 6.0;
    double dt = 0.01;
    std::vector<Eigen::VectorXd> result;
    std::vector<double> sampling_times; // Optional.
    trajectory.evaluateRange(t_start, t_end, dt, derivative_order, &result, &sampling_times);
    //std::cout << "result ="<<result.size()<< std::endl;
    //plotty::plot(sample);
    std::vector<Eigen::VectorXd> velocity;
    trajectory.evaluateRange(t_start, t_end, dt, velocity_order, &velocity, &sampling_times);

    std::vector<Eigen::VectorXd> acceleration;
    trajectory.evaluateRange(t_start, t_end, dt, acc_order, &acceleration, &sampling_times);

    int rows = 3;
    int cols = result.size();
    Eigen::MatrixXd mat(rows, cols);
    Eigen::MatrixXd vel(rows, cols);
    Eigen::MatrixXd acc(rows, cols);
    for(int i = 0; i < cols; i++){
        mat.col(i) = result[i];
        vel.col(i) = velocity[i];
        acc.col(i) = acceleration[i];
    }


    //Eigen::VectorXd t(100);
    //t.setLinSpaced(result.size(), t_start, t_end);
    std::vector<double> t = sampling_times;
    plotty::figure();
    plotty::subplot(3, 1, 1);
    plotty::plot(t, mat.row(0));
    plotty::subplot(3, 1, 2);
    plotty::plot(t, mat.row(1));
    plotty::subplot(3, 1, 3);
    plotty::plot(t, mat.row(2));
    plotty::show();

    plotty::figure();
    plotty::subplot(3, 1, 1);
    plotty::plot(t, vel.row(0));
    plotty::subplot(3, 1, 2);
    plotty::plot(t, vel.row(1));
    plotty::subplot(3, 1, 3);
    plotty::plot(t, vel.row(2));
    plotty::show();

    plotty::figure();
    plotty::subplot(3, 1, 1);
    plotty::plot(t, acc.row(0));
    plotty::subplot(3, 1, 2);
    plotty::plot(t, acc.row(1));
    plotty::subplot(3, 1, 3);
    plotty::plot(t, acc.row(2));
    plotty::show();

    return 0;
}


