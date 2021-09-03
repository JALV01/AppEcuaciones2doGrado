//
//  EquationMath.swift
//  2doGrado
//
//  Created by user196529 on 8/29/21.
//

import Foundation

public class EquationMath{
    public func calculate(eq: Equation) -> Equation{
        if(eq.a == 0 || (eq.a == 0 && eq.b == 0 && eq.c == 0) ){
            return Equation(a: eq.a, b: eq.b, c: eq.c, X1: 0.0, X2: 0.0)
        }
        
        let discriminant: Float16
        discriminant = eq.b * eq.b - 4 * eq.a * eq.c
        
        if(discriminant < 0){
            return Equation(a: eq.a, b: eq.b, c: eq.c, X1: 0.0, X2: 0.0)
        }
        
        eq.X1 = (-eq.b + sqrt(discriminant)) / (2 * eq.a)
        eq.X1 = (-eq.b - sqrt(discriminant)) / (2 * eq.a)
        return Equation(a: eq.a, b: eq.b, c: eq.c, X1: 0.0, X2: 0.0)
        
    }
    
}
