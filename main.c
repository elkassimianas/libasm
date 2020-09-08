#include <stdio.h>
#include <string.h>

size_t	ft_strlen(const char *s);
char	*ft_strcpy(char *dst, const char *src);
int	ft_strcmp(const char *s1, const char *s2);

int	main()
{
	//char dst[] = "hello mom i ";
	//char src[] = "";

	//char dst1[] = "hello mom i ";
	//const char src1[] = "";

//	printf("%s\n%s\n", ft_strcpy(dst, src), strcpy(dst1, src1));
	//printf("%zu\n", ft_strlen("anas"));


	printf ("my function: %d\nreal function: %d\n", ft_strcmp("the\0hidden", "thehidden"), strcmp("the\0hidden", "thehidden"));
	return (0);
}