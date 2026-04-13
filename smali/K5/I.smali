.class public final LK5/I;
.super LK5/n;


# static fields
.field public static final e:LK5/x;


# instance fields
.field public final b:LK5/x;

.field public final c:LK5/n;

.field public final d:Ljava/util/LinkedHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, LK5/x;->q:Ljava/lang/String;

    const-string v0, "/"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lh3/e;->t(Ljava/lang/String;Z)LK5/x;

    move-result-object v0

    sput-object v0, LK5/I;->e:LK5/x;

    return-void
.end method

.method public constructor <init>(LK5/x;LK5/n;Ljava/util/LinkedHashMap;)V
    .locals 1

    const-string v0, "fileSystem"

    invoke-static {p2, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK5/I;->b:LK5/x;

    iput-object p2, p0, LK5/I;->c:LK5/n;

    iput-object p3, p0, LK5/I;->d:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final a(LK5/x;LK5/x;)V
    .locals 0

    const-string p1, "target"

    invoke-static {p2, p1}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    const-string p2, "zip file systems are read-only"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(LK5/x;)V
    .locals 1

    new-instance p1, Ljava/io/IOException;

    const-string v0, "zip file systems are read-only"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(LK5/x;)V
    .locals 1

    new-instance p1, Ljava/io/IOException;

    const-string v0, "zip file systems are read-only"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(LK5/x;)LK5/m;
    .locals 12

    const-string v0, "path"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LK5/I;->e:LK5/x;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, LL5/c;->b(LK5/x;LK5/x;Z)LK5/x;

    move-result-object p1

    iget-object v0, p0, LK5/I;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LL5/f;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    iget-wide v2, p1, LL5/f;->g:J

    new-instance v4, LK5/m;

    iget-boolean v6, p1, LL5/f;->b:Z

    xor-int/lit8 v5, v6, 0x1

    if-eqz v6, :cond_1

    move-object v7, v1

    goto :goto_0

    :cond_1
    iget-wide v7, p1, LL5/f;->d:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v7, v0

    :goto_0
    iget-object v9, p1, LL5/f;->f:Ljava/lang/Long;

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, LK5/m;-><init>(ZZLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    const-wide/16 v5, -0x1

    cmp-long p1, v2, v5

    if-nez p1, :cond_2

    return-object v4

    :cond_2
    iget-object p1, p0, LK5/I;->c:LK5/n;

    iget-object v0, p0, LK5/I;->b:LK5/x;

    invoke-virtual {p1, v0}, LK5/n;->f(LK5/x;)LK5/s;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1, v2, v3}, LK5/s;->b(J)LK5/l;

    move-result-object v0

    invoke-static {v0}, LE2/g;->b(LK5/F;)LK5/z;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, LK5/s;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    if-eqz p1, :cond_3

    :try_start_2
    invoke-virtual {p1}, LK5/s;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object p1, v0

    invoke-static {v2, p1}, LE5/d;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    :goto_2
    if-nez v1, :cond_4

    invoke-static {v2}, Le5/g;->c(Ljava/lang/Object;)V

    invoke-static {v2, v4}, LL5/b;->f(LK5/z;LK5/m;)LK5/m;

    move-result-object p1

    invoke-static {p1}, Le5/g;->c(Ljava/lang/Object;)V

    return-object p1

    :cond_4
    throw v1
.end method

.method public final f(LK5/x;)LK5/s;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not implemented yet!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(LK5/x;)LK5/s;
    .locals 1

    const-string v0, "file"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/io/IOException;

    const-string v0, "zip entries are not writable"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h(LK5/x;)LK5/F;
    .locals 8

    const-string v0, "file"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LK5/I;->e:LK5/x;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, LL5/c;->b(LK5/x;LK5/x;Z)LK5/x;

    move-result-object v0

    iget-object v2, p0, LK5/I;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL5/f;

    if-eqz v0, :cond_3

    iget-wide v2, v0, LL5/f;->d:J

    iget-object p1, p0, LK5/I;->c:LK5/n;

    iget-object v4, p0, LK5/I;->b:LK5/x;

    invoke-virtual {p1, v4}, LK5/n;->f(LK5/x;)LK5/s;

    move-result-object p1

    const/4 v4, 0x0

    :try_start_0
    iget-wide v5, v0, LL5/f;->g:J

    invoke-virtual {p1, v5, v6}, LK5/s;->b(J)LK5/l;

    move-result-object v5

    invoke-static {v5}, LE2/g;->b(LK5/F;)LK5/z;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, LK5/s;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, v4

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception v5

    if-eqz p1, :cond_0

    :try_start_2
    invoke-virtual {p1}, LK5/s;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-static {v5, p1}, LE5/d;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    move-object p1, v5

    move-object v5, v4

    :goto_1
    if-nez p1, :cond_2

    invoke-static {v5}, Le5/g;->c(Ljava/lang/Object;)V

    invoke-static {v5, v4}, LL5/b;->f(LK5/z;LK5/m;)LK5/m;

    iget p1, v0, LL5/f;->e:I

    if-nez p1, :cond_1

    new-instance p1, LL5/d;

    invoke-direct {p1, v5, v2, v3, v1}, LL5/d;-><init>(LK5/F;JZ)V

    goto :goto_2

    :cond_1
    new-instance p1, LK5/r;

    new-instance v4, LL5/d;

    iget-wide v6, v0, LL5/f;->c:J

    invoke-direct {v4, v5, v6, v7, v1}, LL5/d;-><init>(LK5/F;JZ)V

    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-static {v4}, LE2/g;->b(LK5/F;)LK5/z;

    move-result-object v1

    invoke-direct {p1, v1, v0}, LK5/r;-><init>(LK5/z;Ljava/util/zip/Inflater;)V

    new-instance v0, LL5/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v2, v3, v1}, LL5/d;-><init>(LK5/F;JZ)V

    move-object p1, v0

    :goto_2
    return-object p1

    :cond_2
    throw p1

    :cond_3
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no such file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
