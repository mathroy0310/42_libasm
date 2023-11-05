/* ************************************************************************** */
/*                                                                            */
/*                                                     ██   ██ ██████         */
/*   libasm.h                                          ██   ██      ██        */
/*                                                     ███████  █████         */
/*   By: maroy <maroy@student.42.qc>                        ██ ██             */
/*                                                          ██ ███████.qc     */
/*   Created: 2023/10/28 21:08:25 by maroy                                    */
/*   Updated: 2023/11/05 13:19:24 by maroy            >(.)__ <(.)__ =(.)__    */
/*                                                     (___/  (___/  (___/    */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H

# include <errno.h>
# include <stddef.h>
# include <stdint.h>
# include <unistd.h>

/**
 * @brief The ft_strlen() function calculates the length of the string pointed
 * to by s, excluding the terminating null byte ('\0').
 *
 * @param s pointer to the string to be measured.
 * @return The ft_strlen() function returns the number
 * of bytes in the string pointed to by s.
 */
size_t	ft_strlen(const char *s);

int		ft_strcmp(const char *s1, const char *s2);

char	*ft_strcpy(char *dst, const char *src);

ssize_t	ft_write(int fd, const void *buf, size_t count);

ssize_t	ft_read(int fd, const void *buf, size_t count);

char	*ft_strdup(const char *s1);

#endif // -- LIBASM_H --