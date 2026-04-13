.class public final LD5/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final O:LD5/D;


# instance fields
.field public A:J

.field public B:J

.field public C:J

.field public D:J

.field public final E:LD5/D;

.field public F:LD5/D;

.field public G:J

.field public H:J

.field public I:J

.field public J:J

.field public final K:Ljava/net/Socket;

.field public final L:LD5/z;

.field public final M:LD5/l;

.field public final N:Ljava/util/LinkedHashSet;

.field public final b:LD5/i;

.field public final q:Ljava/util/LinkedHashMap;

.field public final r:Ljava/lang/String;

.field public s:I

.field public t:I

.field public u:Z

.field public final v:Lz5/c;

.field public final w:Lz5/b;

.field public final x:Lz5/b;

.field public final y:Lz5/b;

.field public final z:LD5/C;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LD5/D;

    invoke-direct {v0}, LD5/D;-><init>()V

    const/4 v1, 0x7

    const v2, 0xffff

    invoke-virtual {v0, v1, v2}, LD5/D;->c(II)V

    const/4 v1, 0x5

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, LD5/D;->c(II)V

    sput-object v0, LD5/q;->O:LD5/D;

    return-void
.end method

.method public constructor <init>(LD5/g;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, LD5/g;->e:Ljava/lang/Object;

    check-cast v0, LD5/i;

    iput-object v0, p0, LD5/q;->b:LD5/i;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, LD5/q;->q:Ljava/util/LinkedHashMap;

    iget-object v0, p1, LD5/g;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iput-object v0, p0, LD5/q;->r:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, LD5/q;->t:I

    iget-object v0, p1, LD5/g;->f:Ljava/lang/Object;

    check-cast v0, Lz5/c;

    iput-object v0, p0, LD5/q;->v:Lz5/c;

    invoke-virtual {v0}, Lz5/c;->e()Lz5/b;

    move-result-object v2

    iput-object v2, p0, LD5/q;->w:Lz5/b;

    invoke-virtual {v0}, Lz5/c;->e()Lz5/b;

    move-result-object v2

    iput-object v2, p0, LD5/q;->x:Lz5/b;

    invoke-virtual {v0}, Lz5/c;->e()Lz5/b;

    move-result-object v0

    iput-object v0, p0, LD5/q;->y:Lz5/b;

    sget-object v0, LD5/C;->a:LD5/C;

    iput-object v0, p0, LD5/q;->z:LD5/C;

    new-instance v0, LD5/D;

    invoke-direct {v0}, LD5/D;-><init>()V

    const/4 v2, 0x7

    const/high16 v3, 0x1000000

    invoke-virtual {v0, v2, v3}, LD5/D;->c(II)V

    iput-object v0, p0, LD5/q;->E:LD5/D;

    sget-object v0, LD5/q;->O:LD5/D;

    iput-object v0, p0, LD5/q;->F:LD5/D;

    invoke-virtual {v0}, LD5/D;->a()I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, LD5/q;->J:J

    iget-object v0, p1, LD5/g;->a:Ljava/lang/Object;

    check-cast v0, Ljava/net/Socket;

    if-eqz v0, :cond_2

    iput-object v0, p0, LD5/q;->K:Ljava/net/Socket;

    new-instance v0, LD5/z;

    iget-object v2, p1, LD5/g;->d:Ljava/lang/Object;

    check-cast v2, LK5/y;

    if-eqz v2, :cond_1

    invoke-direct {v0, v2}, LD5/z;-><init>(LK5/y;)V

    iput-object v0, p0, LD5/q;->L:LD5/z;

    new-instance v0, LD5/l;

    new-instance v2, LD5/u;

    iget-object p1, p1, LD5/g;->c:Ljava/lang/Object;

    check-cast p1, LK5/z;

    if-eqz p1, :cond_0

    invoke-direct {v2, p1}, LD5/u;-><init>(LK5/z;)V

    invoke-direct {v0, p0, v2}, LD5/l;-><init>(LD5/q;LD5/u;)V

    iput-object v0, p0, LD5/q;->M:LD5/l;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, LD5/q;->N:Ljava/util/LinkedHashSet;

    return-void

    :cond_0
    const-string p1, "source"

    invoke-static {p1}, Le5/g;->k(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p1, "sink"

    invoke-static {p1}, Le5/g;->k(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p1, "socket"

    invoke-static {p1}, Le5/g;->k(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p1, "connectionName"

    invoke-static {p1}, Le5/g;->k(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a(IILjava/io/IOException;)V
    .locals 3

    const-string v0, "connectionCode"

    invoke-static {p1, v0}, Lcom/google/android/material/datepicker/e;->j(ILjava/lang/String;)V

    const-string v0, "streamCode"

    invoke-static {p2, v0}, Lcom/google/android/material/datepicker/e;->j(ILjava/lang/String;)V

    sget-object v0, Lx5/b;->a:[B

    :try_start_0
    invoke-virtual {p0, p1}, LD5/q;->h(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    monitor-enter p0

    :try_start_1
    iget-object p1, p0, LD5/q;->q:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, LD5/q;->q:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    new-array v1, v0, [LD5/y;

    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, [LD5/y;

    iget-object v1, p0, LD5/q;->q:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    if-eqz p1, :cond_2

    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    :try_start_2
    invoke-virtual {v2, p3, p2}, LD5/y;->c(Ljava/io/IOException;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :try_start_3
    iget-object p1, p0, LD5/q;->L:LD5/z;

    invoke-virtual {p1}, LD5/z;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    :try_start_4
    iget-object p1, p0, LD5/q;->K:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    iget-object p1, p0, LD5/q;->w:Lz5/b;

    invoke-virtual {p1}, Lz5/b;->e()V

    iget-object p1, p0, LD5/q;->x:Lz5/b;

    invoke-virtual {p1}, Lz5/b;->e()V

    iget-object p1, p0, LD5/q;->y:Lz5/b;

    invoke-virtual {p1}, Lz5/b;->e()V

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(I)LD5/y;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LD5/q;->q:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LD5/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final close()V
    .locals 3

    const/16 v0, 0x9

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, LD5/q;->a(IILjava/io/IOException;)V

    return-void
.end method

.method public final declared-synchronized f(I)LD5/y;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LD5/q;->q:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LD5/y;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final flush()V
    .locals 1

    iget-object v0, p0, LD5/q;->L:LD5/z;

    invoke-virtual {v0}, LD5/z;->flush()V

    return-void
.end method

.method public final h(I)V
    .locals 4

    const-string v0, "statusCode"

    invoke-static {p1, v0}, Lcom/google/android/material/datepicker/e;->j(ILjava/lang/String;)V

    iget-object v0, p0, LD5/q;->L:LD5/z;

    monitor-enter v0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v1, p0, LD5/q;->u:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, LD5/q;->u:Z

    iget v1, p0, LD5/q;->s:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit p0

    iget-object v2, p0, LD5/q;->L:LD5/z;

    sget-object v3, Lx5/b;->a:[B

    invoke-virtual {v2, v3, v1, p1}, LD5/z;->h([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    :try_start_5
    monitor-exit p0

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_0
    monitor-exit v0

    throw p1
.end method

.method public final declared-synchronized r(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, LD5/q;->G:J

    add-long/2addr v0, p1

    iput-wide v0, p0, LD5/q;->G:J

    iget-wide p1, p0, LD5/q;->H:J

    sub-long/2addr v0, p1

    iget-object p1, p0, LD5/q;->E:LD5/D;

    invoke-virtual {p1}, LD5/D;->a()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    cmp-long p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0, v1}, LD5/q;->y(IJ)V

    iget-wide p1, p0, LD5/q;->H:J

    add-long/2addr p1, v0

    iput-wide p1, p0, LD5/q;->H:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

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

    throw p1
.end method

.method public final s(IZLK5/g;J)V
    .locals 8

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object p4, p0, LD5/q;->L:LD5/z;

    invoke-virtual {p4, p2, p1, p3, v3}, LD5/z;->b(ZILK5/g;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v2, p4, v0

    if-lez v2, :cond_4

    monitor-enter p0

    :goto_1
    :try_start_0
    iget-wide v4, p0, LD5/q;->I:J

    iget-wide v6, p0, LD5/q;->J:J

    cmp-long v2, v4, v6

    if-ltz v2, :cond_2

    iget-object v2, p0, LD5/q;->q:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sub-long/2addr v6, v4

    :try_start_1
    invoke-static {p4, p5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    iget-object v4, p0, LD5/q;->L:LD5/z;

    iget v4, v4, LD5/z;->q:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-wide v4, p0, LD5/q;->I:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, LD5/q;->I:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    sub-long/2addr p4, v6

    iget-object v4, p0, LD5/q;->L:LD5/z;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v0

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    invoke-virtual {v4, v5, p1, p3, v2}, LD5/z;->b(ZILK5/g;I)V

    goto :goto_0

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    monitor-exit p0

    throw p1

    :cond_4
    return-void
.end method

.method public final x(II)V
    .locals 8

    const-string v0, "errorCode"

    invoke-static {p2, v0}, Lcom/google/android/material/datepicker/e;->j(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LD5/q;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] writeSynReset"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, LD5/o;

    const/4 v7, 0x1

    move-object v4, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v2 .. v7}, LD5/o;-><init>(Ljava/lang/String;Ljava/lang/Object;III)V

    iget-object p1, v4, LD5/q;->w:Lz5/b;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lz5/b;->c(Lz5/a;J)V

    return-void
.end method

.method public final y(IJ)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LD5/q;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] windowUpdate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, LD5/p;

    move-object v4, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v2 .. v7}, LD5/p;-><init>(Ljava/lang/String;LD5/q;IJ)V

    iget-object p1, v4, LD5/q;->w:Lz5/b;

    const-wide/16 p2, 0x0

    invoke-virtual {p1, v2, p2, p3}, Lz5/b;->c(Lz5/a;J)V

    return-void
.end method
