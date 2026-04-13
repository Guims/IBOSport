.class public final LA5/a;
.super Ljava/lang/Object;

# interfaces
.implements Lw5/s;


# static fields
.field public static final a:LA5/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LA5/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LA5/a;->a:LA5/a;

    return-void
.end method


# virtual methods
.method public final a(LB5/g;)Lw5/H;
    .locals 9

    iget-object v1, p1, LB5/g;->b:LA5/j;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, v1, LA5/j;->z:Z

    if-eqz v0, :cond_3

    iget-boolean v0, v1, LA5/j;->y:Z

    if-nez v0, :cond_2

    iget-boolean v0, v1, LA5/j;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    monitor-exit v1

    iget-object v2, v1, LA5/j;->t:LA5/f;

    invoke-static {v2}, Le5/g;->c(Ljava/lang/Object;)V

    iget-object v0, v1, LA5/j;->D:Lw5/y;

    :try_start_1
    iget v3, p1, LB5/g;->g:I

    iget v4, p1, LB5/g;->h:I

    iget v5, p1, LB5/g;->i:I

    iget-boolean v6, v0, Lw5/y;->u:Z

    iget-object v7, p1, LB5/g;->f:Lw5/B;

    iget-object v7, v7, Lw5/B;->c:Ljava/lang/String;

    const-string v8, "GET"

    invoke-static {v7, v8}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    invoke-virtual/range {v2 .. v7}, LA5/f;->a(IIIZZ)LA5/n;

    move-result-object v3

    invoke-virtual {v3, v0, p1}, LA5/n;->j(Lw5/y;LB5/g;)LB5/e;

    move-result-object v0
    :try_end_1
    .catch LA5/q; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v3, LA5/e;

    invoke-direct {v3, v1, v2, v0}, LA5/e;-><init>(LA5/j;LA5/f;LB5/e;)V

    iput-object v3, v1, LA5/j;->w:LA5/e;

    iput-object v3, v1, LA5/j;->B:LA5/e;

    monitor-enter v1

    :try_start_2
    iput-boolean v8, v1, LA5/j;->x:Z

    iput-boolean v8, v1, LA5/j;->y:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    iget-boolean v0, v1, LA5/j;->A:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x3d

    const/4 v2, 0x0

    invoke-static {p1, v2, v3, v0, v1}, LB5/g;->a(LB5/g;ILA5/e;Lw5/B;I)LB5/g;

    move-result-object v0

    iget-object p1, p1, LB5/g;->f:Lw5/B;

    invoke-virtual {v0, p1}, LB5/g;->b(Lw5/B;)Lw5/H;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    monitor-exit v1

    throw p1

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :goto_0
    invoke-virtual {v2, p1}, LA5/f;->c(Ljava/io/IOException;)V

    new-instance v0, LA5/q;

    invoke-direct {v0, p1}, LA5/q;-><init>(Ljava/io/IOException;)V

    throw v0

    :goto_1
    iget-object v0, p1, LA5/q;->b:Ljava/io/IOException;

    invoke-virtual {v2, v0}, LA5/f;->c(Ljava/io/IOException;)V

    throw p1

    :cond_1
    :try_start_3
    const-string p1, "Check failed."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_2
    const-string p1, "Check failed."

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string p1, "released"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    monitor-exit v1

    throw p1
.end method
