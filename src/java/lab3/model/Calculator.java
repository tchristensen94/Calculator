/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab3.model;

import static java.lang.Math.PI;

/**
 *
 * @author tim
 */
public class Calculator {
    
    /**
     * Calculates the area of a rectangle given the width and the height
     * @param x width of the rectangle
     * @param y height of the rectangle
     * @return the area of the rectangle
     */
    public double calcRectangle(double x, double y) {
        return x*y;
    }
    
    public double calcCircle(double r) {
       return Math.pow(r, 2) * Math.PI;
    }
    
    public double calcTriangle(double b, double h) {
        return 0.5*(b*h);
    }
}
