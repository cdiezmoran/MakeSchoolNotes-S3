//
//  CoreDataHelper.swift
//  MakeSchoolNotes
//
//  Created by Carlos Diez on 10/12/16.
//  Copyright © 2016 MakeSchool. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class CoreDataHelper {
    static let managedContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    static func addNote(note: Note) {
        do {
            try managedContext.save()
        } catch let error as NSError {
            print("Could not save \(error)")
        }
        print("SAVED!");
    }
    
    static func delete(note: Note) {
        managedContext.delete(note)
        saveNote()
    }
    
    static func retrieveNotes() -> [Note] {
        let fetchRequest = NSFetchRequest<Note>(entityName: "Note")
        do {
            let results = try managedContext.fetch(fetchRequest)
            return results
        } catch let error as NSError {
            print("Could not fetch \(error)")
        }
        return []
    }
    
    static func saveNote() {
        do {
            try managedContext.save()
        } catch let error as NSError {
            print("Could not save \(error)")
        }
    }
}
