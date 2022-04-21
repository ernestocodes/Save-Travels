package com.ernesto.savetravels.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.ernesto.savetravels.models.Expense;
import com.ernesto.savetravels.services.ExpenseService;

@Controller
public class ExpenseController {
	@Autowired
	private ExpenseService expenseService;

	@GetMapping("/expenses")
	public String dashboard(Model model) {
		List<Expense> expenses = expenseService.allExpenses();
		model.addAttribute("expenses", expenses);
		return "index.jsp";
	}

	@GetMapping("/expenses/new")
	public String showForm(@ModelAttribute("expense") Expense expense) {
		return "form.jsp";
	}

//	@GetMapping("/expenses/new")
//	public String showForm(Model model) {
//		Expense emptyExpense = new Expense();
//		model.addAttribute("expense", emptyExpense);
//		return "form.jsp";
//	}

	@PostMapping("/expenses/new")
	public String processForm(@Valid @ModelAttribute("expense") Expense expense, BindingResult result) {
		if (result.hasErrors()) {
			System.out.println("Error!");
			return "form.jsp";
		} else {
			expenseService.saveExpense(expense);
			return "redirect:/expenses";
		}
	}
}
