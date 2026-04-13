.class public final LG3/i;
.super Ljava/io/InputStream;


# instance fields
.field public b:I

.field public q:I

.field public final synthetic r:LG3/k;


# direct methods
.method public constructor <init>(LG3/k;LG3/h;)V
    .locals 1

    iput-object p1, p0, LG3/i;->r:LG3/k;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iget v0, p2, LG3/h;->a:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, LG3/k;->h(I)I

    move-result p1

    iput p1, p0, LG3/i;->b:I

    iget p1, p2, LG3/h;->b:I

    iput p1, p0, LG3/i;->q:I

    return-void
.end method


# virtual methods
.method public final read()I
    .locals 4

    iget v0, p0, LG3/i;->q:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, LG3/i;->r:LG3/k;

    iget-object v1, v0, LG3/k;->b:Ljava/io/RandomAccessFile;

    iget v2, p0, LG3/i;->b:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, v0, LG3/k;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    iget v2, p0, LG3/i;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, LG3/k;->h(I)I

    move-result v0

    iput v0, p0, LG3/i;->b:I

    iget v0, p0, LG3/i;->q:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LG3/i;->q:I

    return v1
.end method

.method public final read([BII)I
    .locals 7

    if-eqz p1, :cond_4

    or-int v0, p2, p3

    if-ltz v0, :cond_3

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_3

    iget v0, p0, LG3/i;->q:I

    if-lez v0, :cond_2

    if-le p3, v0, :cond_0

    move p3, v0

    :cond_0
    iget v0, p0, LG3/i;->b:I

    iget-object v1, p0, LG3/i;->r:LG3/k;

    iget-object v2, v1, LG3/k;->b:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, LG3/k;->h(I)I

    move-result v0

    add-int v3, v0, p3

    iget v4, v1, LG3/k;->q:I

    if-gt v3, v4, :cond_1

    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    goto :goto_0

    :cond_1
    sub-int/2addr v4, v0

    int-to-long v5, v0

    invoke-virtual {v2, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2, p1, p2, v4}, Ljava/io/RandomAccessFile;->readFully([BII)V

    const-wide/16 v5, 0x10

    invoke-virtual {v2, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/2addr p2, v4

    sub-int v0, p3, v4

    invoke-virtual {v2, p1, p2, v0}, Ljava/io/RandomAccessFile;->readFully([BII)V

    :goto_0
    iget p1, p0, LG3/i;->b:I

    add-int/2addr p1, p3

    invoke-virtual {v1, p1}, LG3/k;->h(I)I

    move-result p1

    iput p1, p0, LG3/i;->b:I

    iget p1, p0, LG3/i;->q:I

    sub-int/2addr p1, p3

    iput p1, p0, LG3/i;->q:I

    return p3

    :cond_2
    const/4 p1, -0x1

    return p1

    :cond_3
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buffer"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
