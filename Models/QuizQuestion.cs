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
        
        // Text answer
        public bool IsTextAnswer { get; set; } = false;
        
        public string? CodeSnippet { get; set; }

        // Text answer (keywords)
        public List<string> Keywords { get; set; } = new();
        
        public IEnumerable<string> GetCorrectAnswers()
        {
                if (CorrectAnswers.Any())
                        return CorrectAnswers;

                if (!string.IsNullOrWhiteSpace(CorrectAnswer))
                        return new[] { CorrectAnswer };

                return Enumerable.Empty<string>();
        }
    
}
