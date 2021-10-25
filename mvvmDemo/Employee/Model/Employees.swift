//
//  Employees.swift
//  mvvmDemo
//
//  Created by vasanth on 22/10/21.
//

import Foundation

// MARK: - Root
class Employees: Codable {
    let status: String
    let data: [EmployeeData]
    let message: String
}

// MARK: - EmployeeData
class EmployeeData: Codable {
    let id: Int
    let employeeName: String
    let employeeSalary, employeeAge: Int
    let profileImage: String

    enum CodingKeys: String, CodingKey {
        case id
        case employeeName = "employee_name"
        case employeeSalary = "employee_salary"
        case employeeAge = "employee_age"
        case profileImage = "profile_image"
    }
}
