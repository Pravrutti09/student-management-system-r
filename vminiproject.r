students <- list()

add_student <- function(name, id, address, contact) {
  students[[id]] <<- list(name = name, id = id, address = address, contact = contact)
}

 
edit_student <- function(id, field, value) {
  students[[id]][[field]] <<- value
}

delete_student <- function(id) {
  students[[id]] <<- NULL
}

print_students <- function() {
  for (i in seq_along(students)) {
    if (!is.null(students[[i]])) {
      cat("Name: ", students[[i]]$name, "\n")
      cat("ID: ", students[[i]]$id, "\n")
      cat("Address: ", students[[i]]$address, "\n")
      cat("Contact: ", students[[i]]$contact, "\n")
    }
  }
}

# Main loop
while (TRUE) {
  # Print menu
  cat("Student Management System\n")
  cat("=========================\n")
  cat("1. Add Student\n")
  cat("2. Edit Student\n")
  cat("3. Delete Student\n")
  cat("4. View Students\n")
  cat("5. Exit\n")
  
  
  choice <- readline("Enter choice: ")
  
  if (choice == "1") {
    name <- readline("Enter name: ")
    id <- as.numeric(readline("Enter ID: "))
    address <- readline("Enter address: ")
    contact <- readline("Enter contact: ")
    add_student(name, id, address, contact)
    cat("Student added successfully.\n")
  } else if (choice == "2") {
    id <- as.numeric(readline("Enter ID of student to edit: "))
    field <- readline("Enter field to edit: ")
    value <- readline("Enter new value: ")
    edit_student(id, field, value)
    cat("Student record updated successfully.\n")
  } else if (choice == "3") {
    id <- as.numeric(readline("Enter ID of student to delete: "))
    delete_student(id)
    cat("Student record deleted successfully.\n")
  } else if (choice == "4") {
    print_students()
  } else if (choice == "5") {
    break
  } else {
    cat("Invalid choice. Please try again.\n")
  }
}
