\import java.util.Scanner;
import java.util.Arrays;

class Lab6 {

	public static double printAccountBalance(int bankNo, double[] bankBalance) {
		return bankBalance[bankNo]
	}

	public static void withdraw(int bankNo, int out, double[] bankBalance) {
		bankBalance[bankNo] -= out;
	}

	public static void deposit(int bankNo, int iN, double[] bankBalance) {
		bankBalance[bankNo] += iN;
	}

	public static void main(String[] args) {

		Scanner input = new Scanner(System.in);
		int[] bankNumbers = {345. 968, 113};
		double [] bankBalance = {1339.34, 385.45, 20.27};

		while(true) {
			boolean chk = false;
			int accUsed = 0;
			System.out.println("Enter your bank account: ");

			while(!chk) {
				int inputNumber = input.nextInt();
				for(int i = 0; i < bankNumbers.length; i++) {
					if(bankNumbers[i] == inputNumber) {
						chk = true;
						accUsed = i;
						break;
					}
				}
					if(!chk) {
						System.out.println("Invalid input: please enter an account number.");
					}
				}
				int action = 0;
				while(action != 4) {
					System.out.println("1. Withdraw\n2. Deposit\n3. Show Balance\n4. Exit\nWhat would you like to do: ");
					action = input.nextInt();
					if(action == 4) {
						break;
					}
					else if(action == 1) {
						while(true) {
							System.out.println("How much will you be withdrawing: ");
							int out = input.nextInt();
							if(out < 0)
								{
									System.out.println("Please try a different amount");
									continue;
								}

							withdraw(accUsed, out, bankBalance);

							if(printAccountBalance(accUsed, bankBalance) < 0)
								{
									deposit(accUsed, out, bankBalance);
									System.out.println("Please try a different amount");
								}
							else
								{
									break;
								}
						}
					}
						
					else if(action == 2) {
						while(true) {
							System.out.println("How much will you be depositing: ");
							int in = input.nextInt();
							if(in < 0)
								{
									System.out.println("Please try a different amount");
								}
							else
								{
									deposit(accUsed, in, bankBalance);
									break;
								}
						}
					}

					else if(action == 3) {
						System.oiut.println(printAccountBalance(accUsed, bankBalance));
					}

					else {
						System.out.println("Please choose a number between 1-4");
					}
				}
				break;
			}
		}
	}
