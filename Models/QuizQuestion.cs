namespace QuizGame.WASM.Models;

public class QuizQuestion
{
        public string Question { get; set; } = "";
        public string CorrectAnswer { get; set; } = "";
        public List<string> Answers { get; set; } = new();
        
        // Multi answers
        public List<string> CorrectAnswers { get; set; } = new();
        
        // One answer
        public bool IsMultiChoice => CorrectAnswers.Count > 1;
        
        public IEnumerable<string> GetCorrectAnswers()
        {
                if (CorrectAnswers.Any())
                        return CorrectAnswers;

                if (!string.IsNullOrWhiteSpace(CorrectAnswer))
                        return new[] { CorrectAnswer };

                return Enumerable.Empty<string>();
        }
    
}
