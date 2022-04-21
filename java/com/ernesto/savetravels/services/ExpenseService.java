package com.ernesto.savetravels.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.ernesto.savetravels.models.Expense;
import com.ernesto.savetravels.repositories.ExpenseRepository;

@Service
public class ExpenseService {
	private final ExpenseRepository expenseRepository;

	public ExpenseService(ExpenseRepository expenseRepository) {
		this.expenseRepository = expenseRepository;
	}

//	find all
	public List<Expense> allExpenses() {
		return expenseRepository.findAll();
	}

//find one by ID
	public Expense findExpense(Long id) {
		Optional<Expense> optionalExpense = expenseRepository.findById(id);
		if (optionalExpense.isPresent()) {
			return optionalExpense.get();
		} else {
			return null;
		}
	}

//save an expense for create or update
	public Expense saveExpense(Expense exp) {
		return expenseRepository.save(exp);
	}

//delete an expense
	public void deleteExpense(Long id) {
		expenseRepository.deleteById(id);
	}
}
