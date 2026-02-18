
loan_sanctioned(Age, LoanTerm, _LoanType, sanctioned) :-
    LoanTerm =< 7.5,
    Age =< 32.5.

loan_sanctioned(Age, LoanTerm, _LoanType, not_sanctioned) :-
    LoanTerm =< 7.5,
    Age > 32.5,
    LoanTerm =< 5.5.

loan_sanctioned(Age, LoanTerm, _LoanType, sanctioned) :-
    LoanTerm =< 7.5,
    Age > 32.5,
    LoanTerm > 5.5.

loan_sanctioned(Age, LoanTerm, _LoanType, sanctioned) :-
    LoanTerm > 7.5,
    Age =< 16.5.

loan_sanctioned(Age, LoanTerm, _LoanType, not_sanctioned) :-
    LoanTerm > 7.5,
    Age > 16.5.


% Function to read and classify loan sanction

% Usage: Ask user for inputs and classify loan sanction status

classify_loan :-
    write('Enter age: '), read(Age),
    write('Enter loan term in years: '), read(LoanTerm),
    write('Enter loan type (loan_home/loan_other): '), read(LoanType),
    loan_sanctioned(Age, LoanTerm, LoanType, Result),
    format('Loan sanction result: ~w~n', [Result]).




