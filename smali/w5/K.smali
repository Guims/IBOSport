.class public abstract Lw5/K;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final Companion:Lw5/J;


# instance fields
.field private reader:Ljava/io/Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lw5/J;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lw5/K;->Companion:Lw5/J;

    return-void
.end method

.method public static final create(LK5/i;Lw5/t;J)Lw5/K;
    .locals 1

    sget-object v0, Lw5/K;->Companion:Lw5/J;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1, p2, p3}, Lw5/J;->a(LK5/i;Lw5/t;J)LB5/h;

    move-result-object p0

    return-object p0
.end method

.method public static final create(LK5/j;Lw5/t;)Lw5/K;
    .locals 3

    sget-object v0, Lw5/K;->Companion:Lw5/J;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "$this$toResponseBody"

    invoke-static {p0, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LK5/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p0}, LK5/g;->F(LK5/j;)V

    invoke-virtual {p0}, LK5/j;->b()I

    move-result p0

    int-to-long v1, p0

    invoke-static {v0, p1, v1, v2}, Lw5/J;->a(LK5/i;Lw5/t;J)LB5/h;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Ljava/lang/String;Lw5/t;)Lw5/K;
    .locals 1

    sget-object v0, Lw5/K;->Companion:Lw5/J;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lw5/J;->b(Ljava/lang/String;Lw5/t;)LB5/h;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lw5/t;JLK5/i;)Lw5/K;
    .locals 1

    sget-object v0, Lw5/K;->Companion:Lw5/J;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "content"

    invoke-static {p3, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p0, p1, p2}, Lw5/J;->a(LK5/i;Lw5/t;J)LB5/h;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lw5/t;LK5/j;)Lw5/K;
    .locals 3

    sget-object v0, Lw5/K;->Companion:Lw5/J;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "content"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LK5/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p1}, LK5/g;->F(LK5/j;)V

    invoke-virtual {p1}, LK5/j;->b()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v0, p0, v1, v2}, Lw5/J;->a(LK5/i;Lw5/t;J)LB5/h;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lw5/t;Ljava/lang/String;)Lw5/K;
    .locals 1

    sget-object v0, Lw5/K;->Companion:Lw5/J;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "content"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lw5/J;->b(Ljava/lang/String;Lw5/t;)LB5/h;

    move-result-object p0

    return-object p0
.end method

.method public static final create(Lw5/t;[B)Lw5/K;
    .locals 1

    sget-object v0, Lw5/K;->Companion:Lw5/J;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "content"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lw5/J;->c([BLw5/t;)LB5/h;

    move-result-object p0

    return-object p0
.end method

.method public static final create([BLw5/t;)Lw5/K;
    .locals 1

    sget-object v0, Lw5/K;->Companion:Lw5/J;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lw5/J;->c([BLw5/t;)LB5/h;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final byteStream()Ljava/io/InputStream;
    .locals 1

    invoke-virtual {p0}, Lw5/K;->source()LK5/i;

    move-result-object v0

    invoke-interface {v0}, LK5/i;->w()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final byteString()LK5/j;
    .locals 6

    invoke-virtual {p0}, Lw5/K;->contentLength()J

    move-result-wide v0

    const v2, 0x7fffffff

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    invoke-virtual {p0}, Lw5/K;->source()LK5/i;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, LK5/i;->m()LK5/j;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    invoke-virtual {v3}, LK5/j;->b()I

    move-result v2

    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_1

    int-to-long v4, v2

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Content-Length ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") and stream length ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") disagree"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    :goto_0
    return-object v3

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v2, v0}, La/a;->h(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Cannot buffer entire body for content length: "

    invoke-static {v0, v1, v3}, Lcom/google/android/material/datepicker/e;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final bytes()[B
    .locals 6

    invoke-virtual {p0}, Lw5/K;->contentLength()J

    move-result-wide v0

    const v2, 0x7fffffff

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    invoke-virtual {p0}, Lw5/K;->source()LK5/i;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, LK5/i;->d()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    array-length v2, v3

    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_1

    int-to-long v4, v2

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Content-Length ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") and stream length ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") disagree"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    :goto_0
    return-object v3

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v2, v0}, La/a;->h(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Cannot buffer entire body for content length: "

    invoke-static {v0, v1, v3}, Lcom/google/android/material/datepicker/e;->e(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final charStream()Ljava/io/Reader;
    .locals 4

    iget-object v0, p0, Lw5/K;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lw5/I;

    invoke-virtual {p0}, Lw5/K;->source()LK5/i;

    move-result-object v1

    invoke-virtual {p0}, Lw5/K;->contentType()Lw5/t;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Lk5/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Lw5/t;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lk5/a;->a:Ljava/nio/charset/Charset;

    :goto_0
    invoke-direct {v0, v1, v2}, Lw5/I;-><init>(LK5/i;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lw5/K;->reader:Ljava/io/Reader;

    return-object v0
.end method

.method public close()V
    .locals 1

    invoke-virtual {p0}, Lw5/K;->source()LK5/i;

    move-result-object v0

    invoke-static {v0}, Lx5/b;->c(Ljava/io/Closeable;)V

    return-void
.end method

.method public abstract contentLength()J
.end method

.method public abstract contentType()Lw5/t;
.end method

.method public abstract source()LK5/i;
.end method

.method public final string()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lw5/K;->source()LK5/i;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lw5/K;->contentType()Lw5/t;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lk5/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Lw5/t;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lk5/a;->a:Ljava/nio/charset/Charset;

    :goto_0
    invoke-static {v0, v1}, Lx5/b;->p(LK5/i;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-interface {v0, v1}, LK5/i;->j(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, La/a;->h(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method
