.class public final LD5/l;
.super Ljava/lang/Object;

# interfaces
.implements Ld5/a;


# instance fields
.field public final b:LD5/u;

.field public final synthetic q:LD5/q;


# direct methods
.method public constructor <init>(LD5/q;LD5/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD5/l;->q:LD5/q;

    iput-object p2, p0, LD5/l;->b:LD5/u;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, LD5/l;->q:LD5/q;

    iget-object v1, p0, LD5/l;->b:LD5/u;

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v2, p0}, LD5/u;->a(ZLD5/l;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4, p0}, LD5/u;->a(ZLD5/l;)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x9

    invoke-virtual {v0, v2, v4, v3}, LD5/q;->a(IILjava/io/IOException;)V

    :goto_1
    invoke-static {v1}, Lx5/b;->c(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_3

    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Required SETTINGS preface not received"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v4, v3}, LD5/q;->a(IILjava/io/IOException;)V

    invoke-static {v1}, Lx5/b;->c(Ljava/io/Closeable;)V

    throw v2

    :goto_3
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v3, v2}, LD5/q;->a(IILjava/io/IOException;)V

    goto :goto_1

    :goto_4
    sget-object v0, LS4/i;->a:LS4/i;

    return-object v0
.end method
