.class public final LD5/k;
.super Lz5/a;


# instance fields
.field public final synthetic e:LD5/y;

.field public final synthetic f:LD5/l;

.field public final synthetic g:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;LD5/y;LD5/l;Ljava/util/List;)V
    .locals 0

    iput-object p2, p0, LD5/k;->e:LD5/y;

    iput-object p3, p0, LD5/k;->f:LD5/l;

    iput-object p4, p0, LD5/k;->g:Ljava/util/List;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lz5/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    :try_start_0
    iget-object v0, p0, LD5/k;->f:LD5/l;

    iget-object v0, v0, LD5/l;->q:LD5/q;

    iget-object v0, v0, LD5/q;->b:LD5/i;

    iget-object v1, p0, LD5/k;->e:LD5/y;

    invoke-virtual {v0, v1}, LD5/i;->b(LD5/y;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, LE5/n;->a:LE5/n;

    sget-object v1, LE5/n;->a:LE5/n;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Http2Connection.Listener failure for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, LD5/k;->f:LD5/l;

    iget-object v3, v3, LD5/l;->q:LD5/q;

    iget-object v3, v3, LD5/q;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x4

    invoke-static {v2, v0, v1}, LE5/n;->i(Ljava/lang/String;Ljava/lang/Throwable;I)V

    :try_start_1
    iget-object v1, p0, LD5/k;->e:LD5/y;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, LD5/y;->c(Ljava/io/IOException;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
