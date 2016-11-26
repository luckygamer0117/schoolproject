import java.util.Scanner;
import java.lang.String;
import java.util.Random;

public class rocktest
{
	public static void main(String[] args) 
	{

		// Create our objects
		Scanner scan = new Scanner(System.in);		// The scanner allows user input
		Random rand = new Random();					// The random number generator allows computer to throw a random hand
				
		// Initialize constants
		final String ROCK = "rock";
		final String PAPER = "paper";
		final String SCISSORS = "scissors";
		final String LIZARD = "lizard";
		final String SPOCK = "spock";
		final String QUIT = "q";
		
		final String LOSS_MSG = "You lost!";
		final String WIN_MSG = "You won!";
		final String TIE_MSG = "Tie!";
		
		String computerHand = "";
		String playerHand = "";
		String roundResult = "You threw %s, computer threw %s\n";
		String scoreMsg = "Player Score: %d, Computer Score: %d\n\n";
		String winnerMsg = "";
		int playerScore = 0;
		int computerScore = 0;
		
		// This is the main game loop!
		while (true) 
		{
			System.out.println("Select input:");
			System.out.println("\"rock\", \"paper\", \"scissors\", \"lizard\",\"spock\", or (\"q\" to quit):  ");
			
			// Accept initial user input
			boolean inputValid = true;
			playerHand = scan.next();
			
			// Check validity of input
			if (  !(   playerHand.equals(ROCK) 
					|| playerHand.equals(PAPER) 
					|| playerHand.equals(SCISSORS) 
					|| playerHand.equals(LIZARD)
					|| playerHand.equals(SPOCK)
					|| playerHand.equals(QUIT)     ))
			{
				inputValid = false;
			}
			
			// If input is valid, get new user input
			while (!inputValid) {
				
				System.out.println("Invalid input!! (Input \"rock\", \"paper\"," + 
								   "\"scissors\", \"lizard\", \"spock\" or \"q\")");

				playerHand = scan.next();
				
				// Check new input is valid
				if (       playerHand.equals(ROCK) 
						|| playerHand.equals(PAPER) 
						|| playerHand.equals(SCISSORS)
						|| playerHand.equals(LIZARD)
						|| playerHand.equals(SPOCK)
						|| playerHand.equals(QUIT)		)
				{
					inputValid = true;
				}
			}
				
			
			// If user typed "q" then quit the game
			if (playerHand.equals(QUIT))
			{
				System.out.println();
				System.out.println("Thanks for playing!");
				return;
			}

			// Randomly generate computer's hand
			int tempHand = rand.nextInt(3);
			switch (tempHand) 
			{
			case 0:
				computerHand = ROCK;
				break;
			case 1:
				computerHand = PAPER;
				break;
			case 2:
				computerHand = SCISSORS;
				break;
			case 3:
				computerHand = LIZARD;
				break;
			case 4:
				computerHand = SPOCK;
				break;
			}
			
			// Check for tie
			if (playerHand.equals(computerHand))
			{
				winnerMsg = TIE_MSG;
			}
			else
			{
				// If not a tie, compute the winner
				switch (computerHand)
				{
				case ROCK:
					if (playerHand.equals(PAPER))
					{
						winnerMsg = WIN_MSG;
						playerScore++;
					}
					else if (playerHand.equals(SCISSORS))
					{
						winnerMsg = LOSS_MSG;
						computerScore++;
					}
					else if (playerHand.equals(LIZARD))
					{
						winnerMsg = WIN_MSG;
						playerScore++;
					}
					else if (playerHand.equals(SPOCK))
					{
						winnerMsg = LOSS_MSG;
						computerScore++;
					}
					break;
					
				case PAPER:
					if (playerHand.equals(ROCK))
					{
						winnerMsg = LOSS_MSG;
						computerScore++;
					}
					else if (playerHand.equals(SCISSORS))
					{
						winnerMsg = WIN_MSG;
						playerScore++;
					}
					else if (playerHand.equals(LIZARD))
					{
						winnerMsg = LOSS_MSG;
						computerScore++;
					}
					else if (playerHand.equals(SPOCK))
					{
						winnerMsg = WIN_MSG;
						playerScore++;
					}
					break;
					
				case SCISSORS:
					if (playerHand.equals(ROCK))
					{
						winnerMsg = WIN_MSG;
						playerScore++;
					}
					else if (playerHand.equals(PAPER))
					{
						winnerMsg = LOSS_MSG;
						computerScore++;
					}
					else if (playerHand.equals(LIZARD))
					{
						winnerMsg = WIN_MSG;
						playerScore++;
					}
					else if (playerHand.equals(SPOCK))
					{
						winnerMsg = LOSS_MSG;
						computerScore++;
					}
					break;
				case LIZARD:
					if (playerHand.equals(ROCK))
					{
						winnerMsg = LOSS_MSG;
						computerScore++;
					}
					else if (playerHand.equals(PAPER))
					{
						winnerMsg = WIN_MSG;
						playerScore++;
					}
					else if (playerHand.equals(SCISSORS))
					{
						winnerMsg = LOSS_MSG;
						computerScore++;
					}
					else if (playerHand.equals(SPOCK))
					{
						winnerMsg = WIN_MSG;
						playerScore++;
					}
					break;
				case SPOCK:
					if (playerHand.equals(ROCK))
					{
						winnerMsg = WIN_MSG;
						playerScore++;
					}
					else if (playerHand.equals(PAPER))
					{
						winnerMsg = LOSS_MSG;
						computerScore++;
					}
					else if (playerHand.equals(SCISSORS))
					{
						winnerMsg = WIN_MSG;
						playerScore++;
					}
					else if (playerHand.equals(LIZARD))
					{
						winnerMsg = LOSS_MSG;
						computerScore++;
					}
					break;
				}
			}
			
			// Output the results of the round
			System.out.println();
			System.out.format(roundResult, playerHand, computerHand);
			System.out.println(winnerMsg);
			System.out.format(scoreMsg, playerScore, computerScore);
			
		}
		
	}
}
