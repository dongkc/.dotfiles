#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>

#define OFFSET 446

struct boot_info {
    unsigned char bootind;
    unsigned char start_head;
    unsigned char start_sec;
    unsigned char start_cyl;

    unsigned char sysind;
    unsigned char last_head;
    unsigned char last_sec;
    unsigned char last_cyl;

    unsigned int lowsec;
    unsigned int size;
} record;

void print()
{
    printf("bootind\t\t%u\t0x%x\n", record.bootind, record.bootind);
    printf("start_head\t%u\t0x%x\n", record.start_head, record.start_head);
    printf("start_sec\t%u\t0x%x\n", record.start_sec, record.start_sec);
    printf("start_cyl\t%u\t0x%x\n", record.start_cyl, record.start_cyl);
    printf("sysind\t\t%u\t0x%x\n", record.sysind, record.sysind);
    printf("last_head\t%u\t0x%x\n", record.last_head, record.last_head);
    printf("last_sec\t%u\t0x%x\n", record.last_sec, record.last_sec);
    printf("last_cyl\t%u\t0x%x\n", record.last_cyl, record.last_cyl);
    printf("lowsec\t\t%u\t0x%x\n", record.lowsec, record.lowsec);
    printf("size\t\t%u\t0x%x\n", record.size, record.size);
}

int main(int argc, char *argv[])
{
    int i, fd;

    fd = open(argv[1], O_RDWR);
    lseek(fd, OFFSET, SEEK_SET);

    for (i = 0; i < 4; i++) {
        read(fd, &record, sizeof(record));
        print();
        if (i != 3)
            printf("\n");
    }

    close(fd);

    return EXIT_SUCCESS;
}
