.class public final LA5/e;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:Z

.field public final c:LA5/n;

.field public final d:LA5/j;

.field public final e:LA5/f;

.field public final f:LB5/e;


# direct methods
.method public constructor <init>(LA5/j;LA5/f;LB5/e;)V
    .locals 1

    const-string v0, "finder"

    invoke-static {p2, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA5/e;->d:LA5/j;

    iput-object p2, p0, LA5/e;->e:LA5/f;

    iput-object p3, p0, LA5/e;->f:LB5/e;

    invoke-interface {p3}, LB5/e;->d()LA5/n;

    move-result-object p1

    iput-object p1, p0, LA5/e;->c:LA5/n;

    return-void
.end method


# virtual methods
.method public final a(ZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 1

    if-eqz p3, :cond_0

    invoke-virtual {p0, p3}, LA5/e;->d(Ljava/io/IOException;)V

    :cond_0
    iget-object v0, p0, LA5/e;->d:LA5/j;

    invoke-virtual {v0, p0, p2, p1, p3}, LA5/j;->g(LA5/e;ZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lw5/B;Z)LA5/c;
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean p2, p0, LA5/e;->a:Z

    iget-object p2, p1, Lw5/B;->e:Lw5/F;

    invoke-static {p2}, Le5/g;->c(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lw5/F;->contentLength()J

    move-result-wide v0

    iget-object p2, p0, LA5/e;->f:LB5/e;

    invoke-interface {p2, p1, v0, v1}, LB5/e;->h(Lw5/B;J)LK5/D;

    move-result-object p1

    new-instance p2, LA5/c;

    invoke-direct {p2, p0, p1, v0, v1}, LA5/c;-><init>(LA5/e;LK5/D;J)V

    return-object p2
.end method

.method public final c(Z)Lw5/G;
    .locals 1

    :try_start_0
    iget-object v0, p0, LA5/e;->f:LB5/e;

    invoke-interface {v0, p1}, LB5/e;->b(Z)Lw5/G;

    move-result-object p1

    if-eqz p1, :cond_0

    iput-object p0, p1, Lw5/G;->m:LA5/e;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-object p1

    :goto_0
    invoke-virtual {p0, p1}, LA5/e;->d(Ljava/io/IOException;)V

    throw p1
.end method

.method public final d(Ljava/io/IOException;)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, LA5/e;->b:Z

    iget-object v1, p0, LA5/e;->e:LA5/f;

    invoke-virtual {v1, p1}, LA5/f;->c(Ljava/io/IOException;)V

    iget-object v1, p0, LA5/e;->f:LB5/e;

    invoke-interface {v1}, LB5/e;->d()LA5/n;

    move-result-object v1

    iget-object v2, p0, LA5/e;->d:LA5/j;

    monitor-enter v1

    :try_start_0
    instance-of v3, p1, LD5/E;

    if-eqz v3, :cond_2

    move-object v3, p1

    check-cast v3, LD5/E;

    iget v3, v3, LD5/E;->b:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    iget p1, v1, LA5/n;->m:I

    add-int/2addr p1, v0

    iput p1, v1, LA5/n;->m:I

    if-le p1, v0, :cond_5

    iput-boolean v0, v1, LA5/n;->i:Z

    iget p1, v1, LA5/n;->k:I

    add-int/2addr p1, v0

    iput p1, v1, LA5/n;->k:I

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    check-cast p1, LD5/E;

    iget p1, p1, LD5/E;->b:I

    const/16 v3, 0x9

    if-ne p1, v3, :cond_1

    iget-boolean p1, v2, LA5/j;->A:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean v0, v1, LA5/n;->i:Z

    iget p1, v1, LA5/n;->k:I

    add-int/2addr p1, v0

    iput p1, v1, LA5/n;->k:I

    goto :goto_1

    :cond_2
    iget-object v3, v1, LA5/n;->f:LD5/q;

    if-eqz v3, :cond_3

    move v3, v0

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    instance-of v3, p1, LD5/a;

    if-eqz v3, :cond_5

    :cond_4
    iput-boolean v0, v1, LA5/n;->i:Z

    iget v3, v1, LA5/n;->l:I

    if-nez v3, :cond_5

    iget-object v2, v2, LA5/j;->D:Lw5/y;

    iget-object v3, v1, LA5/n;->q:Lw5/L;

    invoke-static {v2, v3, p1}, LA5/n;->d(Lw5/y;Lw5/L;Ljava/io/IOException;)V

    iget p1, v1, LA5/n;->k:I

    add-int/2addr p1, v0

    iput p1, v1, LA5/n;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
