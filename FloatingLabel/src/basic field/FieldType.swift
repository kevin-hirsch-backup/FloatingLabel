//
//  Field.swift
//  FloatingLabel
//
//  Created by Kevin Hirsch on 20/07/15.
//  Copyright (c) 2015 Kevin Hirsch. All rights reserved.
//

import UIKit

public protocol Helpable {
	
	var helpText: String? { get set }
	
}

public protocol Validatable: class, Helpable {
	
	var validation: Validation? { get set }
	var validations: [Validation] { get set }
	var isValid: Bool { get }
	
	func validate()
	
}

public protocol FieldType {
	
	typealias T
	
	var value: T { get set }
	var valueChangedAction: ((T) -> Void)? { get set }
	
}

public protocol TextFieldType: FieldType {
	
	var text: String? { get set }
	var isEditing: Bool { get }
	
	var value: String? { get set }
	var valueChangedAction: ((String?) -> Void)? { get set }
	
}