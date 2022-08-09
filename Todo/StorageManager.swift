//
//  StorageManager.swift
//  Todo
//
//  Created by Weidong Gu on 2022/7/26.
//

import Foundation

struct StorageManager {
  static let defaultStand = UserDefaults.standard
  static let TODO_LIST_KEY = "TODO_LIST_KEY"

  /// 获取所有 todo 数据
  /// - Returns: todo 字符串数组
  static func getTodoList() -> [String] {
    return defaultStand.stringArray(forKey: TODO_LIST_KEY) ?? []
  }

  /// 存储 Todo 条目
  /// - Parameter content: Todo 条目字符串
  static func saveTodoItem(content: String) {
      var todoList = StorageManager.getTodoList()
    todoList.append(content)
    defaultStand.set(todoList, forKey: TODO_LIST_KEY)
      
    print("create todo successfully: \(content)")
  }

    /// 删除全部 todo 数据
    /// - Returns: todo 字符串数组
    static func deleteAllTodoList() {
        defaultStand.set([], forKey: TODO_LIST_KEY)
    }
    
    /// 删除 todo 数据
    /// - Returns: todo 字符串数组
    static func deleteTodoItem(indexPath: Int) -> [String] {
        var todoList = StorageManager.getTodoList()
        todoList.remove(at: indexPath)
        defaultStand.set(todoList, forKey: TODO_LIST_KEY)
    
        return todoList
    }
}
