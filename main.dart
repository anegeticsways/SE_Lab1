/*
Name: Andrean Kong Gang Hung
Student ID: 103325
8 Oct 2026
Lab 1: Pizza Order Calculator
 */

import 'dart:io';

void main(){
    
    //Variable Declaration
    double totalPayment = 0.0;
    String? choice;

    while(true){

    //User Input
    print("Enter size of Pizza (S, M, L):");
    String? pizzaSize = stdin.readLineSync();

    print("Enter quantity of Pizza:");
    int pizzaQuantity = int.parse(stdin.readLineSync()!);

      //Switch Statement
      switch(pizzaSize){
          case "S":
              print("Small Pizza selected.");
              totalPayment += 5.0 * pizzaQuantity;
              break;
          case "M":
              print("Medium Pizza selected.");
              totalPayment += 7.0 * pizzaQuantity;
              break;
          case "L":
              print("Large Pizza selected.");
              totalPayment += 10.0 * pizzaQuantity;
              break;
          default:
              print("Invalid size entered. Please enter S, M, or L only.");
      }
    
    //User confirmation to continue order pizza or not
    print("Do you want to order a pizza? (Y/N):");
    String? choice = stdin.readLineSync();

        if(choice == "Y" || choice == "y"){
            continue; //Continue order
        } else if(choice == "N" || choice == "n"){
            break; //Stop order
        } else {
            print("Invalid input. Please enter Y or N.");
        }
        
    } //End of while loop

    //Display total payment
    print("Here is your total payment for the order: $totalPayment");
}