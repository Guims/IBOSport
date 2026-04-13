.class public final LH1/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/data/e;
.implements Lw5/f;


# instance fields
.field public final b:Lw5/d;

.field public final q:LO1/h;

.field public r:Ld2/d;

.field public s:Lw5/K;

.field public t:Lcom/bumptech/glide/load/data/d;

.field public volatile u:LA5/j;


# direct methods
.method public constructor <init>(Lw5/d;LO1/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH1/a;->b:Lw5/d;

    iput-object p2, p0, LH1/a;->q:LO1/h;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1

    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public final b()V
    .locals 1

    :try_start_0
    iget-object v0, p0, LH1/a;->r:Ld2/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, LH1/a;->s:Lw5/K;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lw5/K;->close()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, LH1/a;->t:Lcom/bumptech/glide/load/data/d;

    return-void
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final cancel()V
    .locals 1

    iget-object v0, p0, LH1/a;->u:LA5/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LA5/j;->cancel()V

    :cond_0
    return-void
.end method

.method public final e(Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/data/d;)V
    .locals 4

    new-instance p1, Lw5/A;

    invoke-direct {p1}, Lw5/A;-><init>()V

    iget-object v0, p0, LH1/a;->q:LO1/h;

    invoke-virtual {v0}, LO1/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lw5/A;->e(Ljava/lang/String;)V

    iget-object v0, p0, LH1/a;->q:LO1/h;

    iget-object v0, v0, LO1/h;->b:LO1/i;

    invoke-interface {v0}, LO1/i;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "name"

    invoke-static {v2, v3}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "value"

    invoke-static {v1, v3}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p1, Lw5/A;->c:Lw5/o;

    invoke-virtual {v3, v2, v1}, Lw5/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lw5/A;->a()Lw5/B;

    move-result-object p1

    iput-object p2, p0, LH1/a;->t:Lcom/bumptech/glide/load/data/d;

    iget-object p2, p0, LH1/a;->b:Lw5/d;

    check-cast p2, Lw5/y;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LA5/j;

    invoke-direct {v0, p2, p1}, LA5/j;-><init>(Lw5/y;Lw5/B;)V

    iput-object v0, p0, LH1/a;->u:LA5/j;

    iget-object p1, p0, LH1/a;->u:LA5/j;

    invoke-virtual {p1, p0}, LA5/j;->d(Lw5/f;)V

    return-void
.end method

.method public final onFailure(Lw5/e;Ljava/io/IOException;)V
    .locals 1

    const/4 p1, 0x3

    const-string v0, "OkHttpFetcher"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "OkHttp failed to obtain result"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object p1, p0, LH1/a;->t:Lcom/bumptech/glide/load/data/d;

    invoke-interface {p1, p2}, Lcom/bumptech/glide/load/data/d;->d(Ljava/lang/Exception;)V

    return-void
.end method

.method public final onResponse(Lw5/e;Lw5/H;)V
    .locals 3

    iget-object p1, p2, Lw5/H;->v:Lw5/K;

    iput-object p1, p0, LH1/a;->s:Lw5/K;

    invoke-virtual {p2}, Lw5/H;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LH1/a;->s:Lw5/K;

    const-string p2, "Argument must not be null"

    invoke-static {p1, p2}, Ld2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lw5/K;->contentLength()J

    move-result-wide p1

    iget-object v0, p0, LH1/a;->s:Lw5/K;

    invoke-virtual {v0}, Lw5/K;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ld2/d;

    invoke-direct {v1, v0, p1, p2}, Ld2/d;-><init>(Ljava/io/InputStream;J)V

    iput-object v1, p0, LH1/a;->r:Ld2/d;

    iget-object p1, p0, LH1/a;->t:Lcom/bumptech/glide/load/data/d;

    invoke-interface {p1, v1}, Lcom/bumptech/glide/load/data/d;->n(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, LH1/a;->t:Lcom/bumptech/glide/load/data/d;

    new-instance v0, LI1/c;

    iget-object v1, p2, Lw5/H;->r:Ljava/lang/String;

    iget p2, p2, Lw5/H;->s:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, LI1/c;-><init>(Ljava/lang/String;ILjava/io/IOException;)V

    invoke-interface {p1, v0}, Lcom/bumptech/glide/load/data/d;->d(Ljava/lang/Exception;)V

    return-void
.end method
