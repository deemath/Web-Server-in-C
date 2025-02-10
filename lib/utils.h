#ifndef UTILS_H
#define UTILS_H

void build_http_response(const char *file_name, const char *file_ext, char *response, size_t *response_len);
void *handle_client(void *arg);

#endif // UTILS_H
