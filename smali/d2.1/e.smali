.class public final Ld2/e;
.super Ljava/io/InputStream;


# static fields
.field public static final r:Ljava/util/ArrayDeque;


# instance fields
.field public b:LR1/y;

.field public q:Ljava/io/IOException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ld2/n;->a:[C

    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    sput-object v0, Ld2/e;->r:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 1

    iget-object v0, p0, Ld2/e;->b:LR1/y;

    invoke-virtual {v0}, LR1/y;->available()I

    move-result v0

    return v0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Ld2/e;->b:LR1/y;

    invoke-virtual {v0}, LR1/y;->close()V

    return-void
.end method

.method public final mark(I)V
    .locals 1

    iget-object v0, p0, Ld2/e;->b:LR1/y;

    invoke-virtual {v0, p1}, LR1/y;->mark(I)V

    return-void
.end method

.method public final markSupported()Z
    .locals 1

    iget-object v0, p0, Ld2/e;->b:LR1/y;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    return v0
.end method

.method public final read()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Ld2/e;->b:LR1/y;

    invoke-virtual {v0}, LR1/y;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    iput-object v0, p0, Ld2/e;->q:Ljava/io/IOException;

    throw v0
.end method

.method public final read([B)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Ld2/e;->b:LR1/y;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    iput-object p1, p0, Ld2/e;->q:Ljava/io/IOException;

    throw p1
.end method

.method public final read([BII)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Ld2/e;->b:LR1/y;

    invoke-virtual {v0, p1, p2, p3}, LR1/y;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    iput-object p1, p0, Ld2/e;->q:Ljava/io/IOException;

    throw p1
.end method

.method public final declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ld2/e;->b:LR1/y;

    invoke-virtual {v0}, LR1/y;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final skip(J)J
    .locals 1

    :try_start_0
    iget-object v0, p0, Ld2/e;->b:LR1/y;

    invoke-virtual {v0, p1, p2}, LR1/y;->skip(J)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    iput-object p1, p0, Ld2/e;->q:Ljava/io/IOException;

    throw p1
.end method
