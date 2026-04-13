.class public final Lw5/I;
.super Ljava/io/Reader;


# instance fields
.field public b:Z

.field public q:Ljava/io/InputStreamReader;

.field public final r:LK5/i;

.field public final s:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>(LK5/i;Ljava/nio/charset/Charset;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "charset"

    invoke-static {p2, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    iput-object p1, p0, Lw5/I;->r:LK5/i;

    iput-object p2, p0, Lw5/I;->s:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lw5/I;->b:Z

    iget-object v0, p0, Lw5/I;->q:Ljava/io/InputStreamReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void

    :cond_0
    iget-object v0, p0, Lw5/I;->r:LK5/i;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final read([CII)I
    .locals 4

    const-string v0, "cbuf"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lw5/I;->b:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lw5/I;->q:Ljava/io/InputStreamReader;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lw5/I;->r:LK5/i;

    invoke-interface {v1}, LK5/i;->w()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lw5/I;->s:Ljava/nio/charset/Charset;

    invoke-static {v1, v3}, Lx5/b;->p(LK5/i;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lw5/I;->q:Ljava/io/InputStreamReader;

    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
