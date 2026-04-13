.class public final LR1/y;
.super Ljava/io/FilterInputStream;


# instance fields
.field public volatile b:[B

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public final u:LL1/g;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;LL1/g;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, -0x1

    iput p1, p0, LR1/y;->s:I

    iput-object p2, p0, LR1/y;->u:LL1/g;

    const-class p1, [B

    const/high16 v0, 0x10000

    invoke-virtual {p2, v0, p1}, LL1/g;->c(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, LR1/y;->b:[B

    return-void
.end method

.method public static f()V
    .locals 2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedInputStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a([BLjava/io/InputStream;)I
    .locals 5

    iget v0, p0, LR1/y;->s:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    iget v3, p0, LR1/y;->t:I

    sub-int/2addr v3, v0

    iget v4, p0, LR1/y;->r:I

    if-lt v3, v4, :cond_0

    goto :goto_3

    :cond_0
    if-nez v0, :cond_2

    array-length v2, p1

    if-le v4, v2, :cond_2

    iget v2, p0, LR1/y;->q:I

    array-length v3, p1

    if-ne v2, v3, :cond_2

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    if-le v0, v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v0

    :goto_0
    iget-object v0, p0, LR1/y;->u:LL1/g;

    const-class v2, [B

    invoke-virtual {v0, v4, v2}, LL1/g;->c(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, LR1/y;->b:[B

    iget-object v2, p0, LR1/y;->u:LL1/g;

    invoke-virtual {v2, p1}, LL1/g;->g(Ljava/lang/Object;)V

    move-object p1, v0

    goto :goto_1

    :cond_2
    if-lez v0, :cond_3

    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_1
    iget v0, p0, LR1/y;->t:I

    iget v2, p0, LR1/y;->s:I

    sub-int/2addr v0, v2

    iput v0, p0, LR1/y;->t:I

    iput v1, p0, LR1/y;->s:I

    iput v1, p0, LR1/y;->q:I

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p2, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    iget p2, p0, LR1/y;->t:I

    if-gtz p1, :cond_4

    goto :goto_2

    :cond_4
    add-int/2addr p2, p1

    :goto_2
    iput p2, p0, LR1/y;->q:I

    return p1

    :cond_5
    :goto_3
    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-lez p1, :cond_6

    iput v2, p0, LR1/y;->s:I

    iput v1, p0, LR1/y;->t:I

    iput p1, p0, LR1/y;->q:I

    :cond_6
    return p1
.end method

.method public final declared-synchronized available()I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, LR1/y;->b:[B

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget v1, p0, LR1/y;->q:I

    iget v2, p0, LR1/y;->t:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v1, v0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {}, LR1/y;->f()V

    const/4 v0, 0x0

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LR1/y;->b:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, LR1/y;->u:LL1/g;

    iget-object v1, p0, LR1/y;->b:[B

    invoke-virtual {v0, v1}, LL1/g;->g(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, LR1/y;->b:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, LR1/y;->b:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, LR1/y;->u:LL1/g;

    iget-object v2, p0, LR1/y;->b:[B

    invoke-virtual {v0, v2}, LL1/g;->g(Ljava/lang/Object;)V

    iput-object v1, p0, LR1/y;->b:[B

    :cond_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iput-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-void
.end method

.method public final declared-synchronized mark(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, LR1/y;->r:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, LR1/y;->r:I

    iget p1, p0, LR1/y;->t:I

    iput p1, p0, LR1/y;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized read()I
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LR1/y;->b:[B

    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget v3, p0, LR1/y;->t:I

    iget v4, p0, LR1/y;->q:I

    const/4 v5, -0x1

    if-lt v3, v4, :cond_0

    invoke-virtual {p0, v0, v1}, LR1/y;->a([BLjava/io/InputStream;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v5, :cond_0

    monitor-exit p0

    return v5

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v1, p0, LR1/y;->b:[B

    if-eq v0, v1, :cond_2

    iget-object v0, p0, LR1/y;->b:[B

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, LR1/y;->f()V

    throw v2

    :cond_2
    :goto_0
    iget v1, p0, LR1/y;->q:I

    iget v2, p0, LR1/y;->t:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_3

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, LR1/y;->t:I

    aget-byte v0, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    :cond_3
    monitor-exit p0

    return v5

    :cond_4
    :try_start_2
    invoke-static {}, LR1/y;->f()V

    throw v2

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized read([BII)I
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LR1/y;->b:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    if-nez p3, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_1
    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v2, :cond_f

    iget v3, p0, LR1/y;->t:I

    iget v4, p0, LR1/y;->q:I

    if-ge v3, v4, :cond_4

    sub-int/2addr v4, v3

    if-lt v4, p3, :cond_1

    move v4, p3

    :cond_1
    invoke-static {v0, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, LR1/y;->t:I

    add-int/2addr v3, v4

    iput v3, p0, LR1/y;->t:I

    if-eq v4, p3, :cond_3

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    add-int/2addr p2, v4

    sub-int v3, p3, v4

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_5

    :cond_3
    :goto_0
    monitor-exit p0

    return v4

    :cond_4
    move v3, p3

    :goto_1
    :try_start_2
    iget v4, p0, LR1/y;->s:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    array-length v4, v0

    if-lt v3, v4, :cond_6

    invoke-virtual {v2, p1, p2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v4, v5, :cond_c

    if-ne v3, p3, :cond_5

    goto :goto_2

    :cond_5
    sub-int v5, p3, v3

    :goto_2
    monitor-exit p0

    return v5

    :cond_6
    :try_start_3
    invoke-virtual {p0, v0, v2}, LR1/y;->a([BLjava/io/InputStream;)I

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v4, v5, :cond_8

    if-ne v3, p3, :cond_7

    goto :goto_3

    :cond_7
    sub-int v5, p3, v3

    :goto_3
    monitor-exit p0

    return v5

    :cond_8
    :try_start_4
    iget-object v4, p0, LR1/y;->b:[B

    if-eq v0, v4, :cond_a

    iget-object v0, p0, LR1/y;->b:[B

    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    invoke-static {}, LR1/y;->f()V

    throw v1

    :cond_a
    :goto_4
    iget v4, p0, LR1/y;->q:I

    iget v5, p0, LR1/y;->t:I

    sub-int/2addr v4, v5

    if-lt v4, v3, :cond_b

    move v4, v3

    :cond_b
    invoke-static {v0, v5, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, LR1/y;->t:I

    add-int/2addr v5, v4

    iput v5, p0, LR1/y;->t:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_c
    sub-int/2addr v3, v4

    if-nez v3, :cond_d

    monitor-exit p0

    return p3

    :cond_d
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v5, :cond_e

    sub-int/2addr p3, v3

    monitor-exit p0

    return p3

    :cond_e
    add-int/2addr p2, v4

    goto :goto_1

    :cond_f
    :try_start_6
    invoke-static {}, LR1/y;->f()V

    throw v1

    :cond_10
    invoke-static {}, LR1/y;->f()V

    throw v1

    :goto_5
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public final declared-synchronized reset()V
    .locals 3

    const-string v0, "Mark has been invalidated, pos: "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, LR1/y;->b:[B

    if-eqz v1, :cond_1

    iget v1, p0, LR1/y;->s:I

    const/4 v2, -0x1

    if-eq v2, v1, :cond_0

    iput v1, p0, LR1/y;->t:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, LI1/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, LR1/y;->t:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " markLimit: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, LR1/y;->r:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized skip(J)J
    .locals 10

    monitor-enter p0

    const-wide/16 v0, 0x1

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x0

    if-gez v0, :cond_0

    monitor-exit p0

    return-wide v1

    :cond_0
    :try_start_0
    iget-object v0, p0, LR1/y;->b:[B

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    iget-object v4, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    if-eqz v4, :cond_6

    iget v3, p0, LR1/y;->q:I

    iget v5, p0, LR1/y;->t:I

    sub-int v6, v3, v5

    int-to-long v6, v6

    cmp-long v6, v6, p1

    if-ltz v6, :cond_1

    int-to-long v0, v5

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, LR1/y;->t:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    int-to-long v6, v3

    int-to-long v8, v5

    sub-long/2addr v6, v8

    :try_start_1
    iput v3, p0, LR1/y;->t:I

    iget v3, p0, LR1/y;->s:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_4

    iget v3, p0, LR1/y;->r:I

    int-to-long v8, v3

    cmp-long v3, p1, v8

    if-gtz v3, :cond_4

    invoke-virtual {p0, v0, v4}, LR1/y;->a([BLjava/io/InputStream;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v5, :cond_2

    monitor-exit p0

    return-wide v6

    :cond_2
    :try_start_2
    iget v0, p0, LR1/y;->q:I

    iget v1, p0, LR1/y;->t:I

    sub-int v2, v0, v1

    int-to-long v2, v2

    sub-long v4, p1, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    int-to-long v0, v1

    add-long/2addr v0, p1

    sub-long/2addr v0, v6

    long-to-int v0, v0

    iput v0, p0, LR1/y;->t:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-wide p1

    :cond_3
    int-to-long p1, v0

    add-long/2addr v6, p1

    int-to-long p1, v1

    sub-long/2addr v6, p1

    :try_start_3
    iput v0, p0, LR1/y;->t:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-wide v6

    :cond_4
    sub-long/2addr p1, v6

    :try_start_4
    invoke-virtual {v4, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    cmp-long v0, p1, v1

    if-lez v0, :cond_5

    iput v5, p0, LR1/y;->s:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    add-long/2addr v6, p1

    monitor-exit p0

    return-wide v6

    :cond_6
    :try_start_5
    invoke-static {}, LR1/y;->f()V

    throw v3

    :cond_7
    invoke-static {}, LR1/y;->f()V

    throw v3

    :goto_0
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method
