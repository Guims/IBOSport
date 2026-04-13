.class public final LD5/g;
.super Ljava/lang/Object;

# interfaces
.implements Ly3/c;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ly0/o;Landroid/media/MediaFormat;Landroidx/media3/common/Format;Landroid/view/Surface;Landroid/media/MediaCrypto;Lr0/C;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD5/g;->a:Ljava/lang/Object;

    iput-object p2, p0, LD5/g;->b:Ljava/lang/Object;

    iput-object p3, p0, LD5/g;->c:Ljava/lang/Object;

    iput-object p4, p0, LD5/g;->d:Ljava/lang/Object;

    iput-object p5, p0, LD5/g;->e:Ljava/lang/Object;

    iput-object p6, p0, LD5/g;->f:Ljava/lang/Object;

    return-void
.end method

.method public static h(Ljava/io/DataInputStream;)Ln0/p;
    .locals 11

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    if-ltz v5, :cond_1

    const/high16 v6, 0xa00000

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    sget-object v8, Lk0/C;->f:[B

    move v9, v2

    :goto_1
    if-eq v9, v5, :cond_0

    add-int v10, v9, v7

    invoke-static {v8, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v8

    invoke-virtual {p0, v8, v9, v7}, Ljava/io/DataInputStream;->readFully([BII)V

    sub-int v7, v5, v10

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v9, v10

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Invalid value size: "

    invoke-static {v5, v0}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ln0/p;

    invoke-direct {p0, v1}, Ln0/p;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method public static i(Ln0/p;Ljava/io/DataOutputStream;)V
    .locals 2

    iget-object p0, p0, Ln0/p;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static j(LH3/P;LG3/e;LK3/c;Ljava/util/Map;)LH3/P;
    .locals 10

    const-string v0, "FirebaseCrashlytics"

    invoke-virtual {p0}, LH3/P;->a()LH3/O;

    move-result-object v1

    iget-object p1, p1, LG3/e;->b:Ljava/lang/Object;

    check-cast p1, LG3/c;

    invoke-interface {p1}, LG3/c;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    new-instance v3, LH3/d0;

    invoke-direct {v3, p1}, LH3/d0;-><init>(Ljava/lang/String;)V

    iput-object v3, v1, LH3/O;->e:LH3/G0;

    goto :goto_0

    :cond_0
    const-string p1, "No log data to include with this event."

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0, p1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    iget-object p1, p2, LK3/c;->s:Ljava/lang/Object;

    check-cast p1, LE1/d;

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p1, p1, LE1/d;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, LG3/d;

    monitor-enter v3

    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    iget-object p3, v3, LG3/d;->a:Ljava/util/HashMap;

    invoke-direct {p1, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    iget-object p1, p1, LE1/d;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LG3/d;

    monitor-enter p1

    :try_start_2
    new-instance v3, Ljava/util/HashMap;

    iget-object v4, p1, LG3/d;->a:Ljava/util/HashMap;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit p1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/16 v6, 0x400

    invoke-static {v6, v5}, LG3/d;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v7

    const/16 v8, 0x40

    if-lt v7, v8, :cond_4

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v6, v4}, LG3/d;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    if-lez v3, :cond_6

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v4, "Ignored "

    invoke-direct {p3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " keys when adding event specific keys. Maximum allowable: 1024"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    :goto_3
    invoke-static {p1}, LD5/g;->t(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    iget-object p1, p2, LK3/c;->t:Ljava/lang/Object;

    check-cast p1, LE1/d;

    iget-object p1, p1, LE1/d;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, LG3/d;

    monitor-enter p2

    :try_start_3
    new-instance p1, Ljava/util/HashMap;

    iget-object p3, p2, LG3/d;->a:Ljava/util/HashMap;

    invoke-direct {p1, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p2

    invoke-static {p1}, LD5/g;->t(Ljava/util/Map;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    :cond_7
    iget-object p0, p0, LH3/P;->c:LH3/E0;

    check-cast p0, LH3/Q;

    iget-object v3, p0, LH3/Q;->a:LH3/S;

    iget-object v6, p0, LH3/Q;->d:Ljava/lang/Boolean;

    iget-object v7, p0, LH3/Q;->e:LH3/D0;

    iget-object v8, p0, LH3/Q;->f:Ljava/util/List;

    iget v9, p0, LH3/Q;->g:I

    new-instance v2, LH3/Q;

    invoke-direct/range {v2 .. v9}, LH3/Q;-><init>(LH3/S;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;LH3/D0;Ljava/util/List;I)V

    iput-object v2, v1, LH3/O;->c:LH3/E0;

    :cond_8
    invoke-virtual {v1}, LH3/O;->a()LH3/P;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_2
    move-exception v0

    move-object p0, v0

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0
.end method

.method public static k(LH3/P;LK3/c;)LH3/K0;
    .locals 7

    iget-object p1, p1, LK3/c;->u:Ljava/lang/Object;

    check-cast p1, LA5/r;

    monitor-enter p1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, LA5/r;->a:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LG3/m;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, LH3/e0;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    check-cast v2, LG3/b;

    iget-object v4, v2, LG3/b;->e:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v5, v2, LG3/b;->b:Ljava/lang/String;

    if-eqz v5, :cond_2

    new-instance v6, LH3/g0;

    invoke-direct {v6, v5, v4}, LH3/g0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, v3, LH3/e0;->a:LH3/g0;

    iget-object v4, v2, LG3/b;->c:Ljava/lang/String;

    if-eqz v4, :cond_1

    iput-object v4, v3, LH3/e0;->b:Ljava/lang/String;

    iget-object v4, v2, LG3/b;->d:Ljava/lang/String;

    if-eqz v4, :cond_0

    iput-object v4, v3, LH3/e0;->c:Ljava/lang/String;

    iget-wide v4, v2, LG3/b;->f:J

    iput-wide v4, v3, LH3/e0;->d:J

    iget-byte v2, v3, LH3/e0;->e:B

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    iput-byte v2, v3, LH3/e0;->e:B

    invoke-virtual {v3}, LH3/e0;->a()LH3/f0;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null parameterValue"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null parameterKey"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null rolloutId"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null variantId"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    return-object p0

    :cond_5
    invoke-virtual {p0}, LH3/P;->a()LH3/O;

    move-result-object p0

    new-instance v0, LH3/h0;

    invoke-direct {v0, p1}, LH3/h0;-><init>(Ljava/util/List;)V

    iput-object v0, p0, LH3/O;->f:LH3/J0;

    invoke-virtual {p0}, LH3/O;->a()LH3/P;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static l([II)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static m(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v1, 0x2000

    :try_start_1
    new-array v1, v1, [B

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    return-object v1

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_1
    :try_start_3
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p0

    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
.end method

.method public static n(Landroid/content/Context;LE3/w;LK3/c;LE3/a;LG3/e;LK3/c;LA/j;LM3/c;LA/j;LE3/j;LF3/d;)LD5/g;
    .locals 6

    new-instance v0, LE3/r;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, LE3/r;-><init>(Landroid/content/Context;LE3/w;LE3/a;LA/j;LM3/c;)V

    new-instance p3, LK3/a;

    invoke-direct {p3, p2, p7, p9}, LK3/a;-><init>(LK3/c;LM3/c;LE3/j;)V

    sget-object p2, LL3/a;->b:LI3/a;

    invoke-static {p0}, Lj2/q;->b(Landroid/content/Context;)V

    invoke-static {}, Lj2/q;->a()Lj2/q;

    move-result-object p0

    new-instance p2, Lh2/a;

    sget-object p6, LL3/a;->c:Ljava/lang/String;

    sget-object v1, LL3/a;->d:Ljava/lang/String;

    invoke-direct {p2, p6, v1}, Lh2/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lj2/q;->c(Lj2/l;)Lj2/p;

    move-result-object p0

    new-instance p2, Lg2/b;

    const-string p6, "json"

    invoke-direct {p2, p6}, Lg2/b;-><init>(Ljava/lang/String;)V

    sget-object p6, LL3/a;->e:LA3/b;

    const-string v1, "FIREBASE_CRASHLYTICS_REPORT"

    invoke-virtual {p0, v1, p2, p6}, Lj2/p;->a(Ljava/lang/String;Lg2/b;Lg2/d;)LG/c;

    move-result-object p0

    new-instance p2, LL3/b;

    invoke-virtual {p7}, LM3/c;->b()LM3/b;

    move-result-object p6

    invoke-direct {p2, p0, p6, p8}, LL3/b;-><init>(LG/c;LM3/b;LA/j;)V

    new-instance p0, LL3/a;

    invoke-direct {p0, p2}, LL3/a;-><init>(LL3/b;)V

    new-instance p2, LD5/g;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object v0, p2, LD5/g;->a:Ljava/lang/Object;

    iput-object p3, p2, LD5/g;->b:Ljava/lang/Object;

    iput-object p0, p2, LD5/g;->c:Ljava/lang/Object;

    iput-object p4, p2, LD5/g;->d:Ljava/lang/Object;

    iput-object p5, p2, LD5/g;->e:Ljava/lang/Object;

    iput-object p1, p2, LD5/g;->f:Ljava/lang/Object;

    return-object p2
.end method

.method public static o(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 6

    const v0, 0x7f040117

    invoke-static {p0, v0}, Lk/M0;->c(Landroid/content/Context;I)I

    move-result v0

    const v1, 0x7f040114

    invoke-static {p0, v1}, Lk/M0;->b(Landroid/content/Context;I)I

    move-result p0

    sget-object v1, Lk/M0;->b:[I

    sget-object v2, Lk/M0;->d:[I

    invoke-static {v0, p1}, LB/a;->b(II)I

    move-result v3

    sget-object v4, Lk/M0;->c:[I

    invoke-static {v0, p1}, LB/a;->b(II)I

    move-result v0

    sget-object v5, Lk/M0;->f:[I

    filled-new-array {v1, v2, v4, v5}, [[I

    move-result-object v1

    filled-new-array {p0, v3, v0, p1}, [I

    move-result-object p0

    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v1, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method public static s(Lk/H0;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const v0, 0x7f08007c

    invoke-virtual {p0, p1, v0}, Lk/H0;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f08007d

    invoke-virtual {p0, p1, v1}, Lk/H0;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p1, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    if-ne p1, p2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    if-ne p1, p2, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object p1, v2

    :goto_0
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v2, p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-ne v2, p2, :cond_1

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :goto_1
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v2, v1

    const/4 v0, 0x1

    aput-object p0, v2, v0

    const/4 p0, 0x2

    aput-object p1, v2, p0

    invoke-direct {p2, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/high16 p1, 0x1020000

    invoke-virtual {p2, v1, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const p1, 0x102000f

    invoke-virtual {p2, v0, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const p1, 0x102000d

    invoke-virtual {p2, p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    return-object p2
.end method

.method public static t(Ljava/util/Map;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v3, LH3/F;

    invoke-direct {v3, v2, v1}, LH3/F;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Null value"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Null key"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, LD0/c;

    const/16 v1, 0xb

    invoke-direct {p0, v1}, LD0/c;-><init>(I)V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static y(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p2, :cond_0

    sget-object p2, Lk/s;->b:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    invoke-static {p1, p2}, Lk/s;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, LD5/g;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-static {p1}, Ly3/q;->a(Ljava/lang/Class;)Ly3/q;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LD5/g;->f:Ljava/lang/Object;

    check-cast v0, Ly3/c;

    invoke-interface {v0, p1}, Ly3/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, LV3/a;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Ly3/r;

    check-cast v0, LV3/a;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    return-object p1

    :cond_1
    new-instance v0, LR1/G;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to request an undeclared dependency "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/Class;)LX3/b;
    .locals 0

    invoke-static {p1}, Ly3/q;->a(Ljava/lang/Class;)Ly3/q;

    move-result-object p1

    invoke-virtual {p0, p1}, LD5/g;->e(Ly3/q;)LX3/b;

    move-result-object p1

    return-object p1
.end method

.method public c(Ly3/q;)Ly3/o;
    .locals 3

    iget-object v0, p0, LD5/g;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LD5/g;->f:Ljava/lang/Object;

    check-cast v0, Ly3/c;

    invoke-interface {v0, p1}, Ly3/c;->c(Ly3/q;)Ly3/o;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, LR1/G;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to request an undeclared dependency Deferred<"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ">."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Ly3/q;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, LD5/g;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LD5/g;->f:Ljava/lang/Object;

    check-cast v0, Ly3/c;

    invoke-interface {v0, p1}, Ly3/c;->d(Ly3/q;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, LR1/G;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to request an undeclared dependency "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e(Ly3/q;)LX3/b;
    .locals 3

    iget-object v0, p0, LD5/g;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LD5/g;->f:Ljava/lang/Object;

    check-cast v0, Ly3/c;

    invoke-interface {v0, p1}, Ly3/c;->e(Ly3/q;)LX3/b;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, LR1/G;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to request an undeclared dependency Provider<"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ">."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(Ly3/q;)Ljava/util/Set;
    .locals 3

    iget-object v0, p0, LD5/g;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LD5/g;->f:Ljava/lang/Object;

    check-cast v0, Ly3/c;

    invoke-interface {v0, p1}, Ly3/c;->f(Ly3/q;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, LR1/G;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to request an undeclared dependency Set<"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ">."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g(Ly3/q;)LX3/b;
    .locals 3

    iget-object v0, p0, LD5/g;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LD5/g;->f:Ljava/lang/Object;

    check-cast v0, Ly3/c;

    invoke-interface {v0, p1}, Ly3/c;->g(Ly3/q;)LX3/b;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, LR1/G;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to request an undeclared dependency Provider<Set<"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ">>."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public p(Ljava/lang/String;)Ln0/l;
    .locals 1

    iget-object v0, p0, LD5/g;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln0/l;

    return-object p1
.end method

.method public q(Ljava/lang/Class;)Ly3/o;
    .locals 0

    invoke-static {p1}, Ly3/q;->a(Ljava/lang/Class;)Ly3/q;

    move-result-object p1

    invoke-virtual {p0, p1}, LD5/g;->c(Ly3/q;)Ly3/o;

    move-result-object p1

    return-object p1
.end method

.method public r(Ljava/lang/String;)Ln0/l;
    .locals 6

    iget-object v0, p0, LD5/g;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln0/l;

    if-nez v1, :cond_4

    iget-object v1, p0, LD5/g;->b:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    add-int/2addr v5, v4

    :goto_0
    if-gez v5, :cond_3

    :goto_1
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    if-eq v3, v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    move v5, v3

    :cond_3
    new-instance v2, Ln0/l;

    sget-object v3, Ln0/p;->c:Ln0/p;

    invoke-direct {v2, v5, p1, v3}, Ln0/l;-><init>(ILjava/lang/String;Ln0/p;)V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, LD5/g;->d:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v5, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object p1, p0, LD5/g;->e:Ljava/lang/Object;

    check-cast p1, Ln0/n;

    invoke-interface {p1, v2}, Ln0/n;->f(Ln0/l;)V

    return-object v2

    :cond_4
    return-object v1
.end method

.method public u(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 8

    const v0, 0x7f080051

    if-ne p2, v0, :cond_0

    const p2, 0x7f060015

    invoke-static {p1, p2}, LH3/u0;->o(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_0
    const v0, 0x7f08007f

    if-ne p2, v0, :cond_1

    const p2, 0x7f060018

    invoke-static {p1, p2}, LH3/u0;->o(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_1
    const v0, 0x7f08007e

    const/4 v1, 0x0

    if-ne p2, v0, :cond_3

    const/4 p2, 0x3

    new-array v0, p2, [[I

    new-array p2, p2, [I

    const v2, 0x7f04014a

    invoke-static {p1, v2}, Lk/M0;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v4, 0x2

    const v5, 0x7f040116

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v2, Lk/M0;->b:[I

    aput-object v2, v0, v1

    invoke-virtual {v3, v2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    aput v2, p2, v1

    sget-object v1, Lk/M0;->e:[I

    aput-object v1, v0, v6

    invoke-static {p1, v5}, Lk/M0;->c(Landroid/content/Context;I)I

    move-result p1

    aput p1, p2, v6

    sget-object p1, Lk/M0;->f:[I

    aput-object p1, v0, v4

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    aput p1, p2, v4

    goto :goto_0

    :cond_2
    sget-object v3, Lk/M0;->b:[I

    aput-object v3, v0, v1

    invoke-static {p1, v2}, Lk/M0;->b(Landroid/content/Context;I)I

    move-result v3

    aput v3, p2, v1

    sget-object v1, Lk/M0;->e:[I

    aput-object v1, v0, v6

    invoke-static {p1, v5}, Lk/M0;->c(Landroid/content/Context;I)I

    move-result v1

    aput v1, p2, v6

    sget-object v1, Lk/M0;->f:[I

    aput-object v1, v0, v4

    invoke-static {p1, v2}, Lk/M0;->c(Landroid/content/Context;I)I

    move-result p1

    aput p1, p2, v4

    :goto_0
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v0, p2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1

    :cond_3
    const v0, 0x7f080045

    if-ne p2, v0, :cond_4

    const p2, 0x7f040114

    invoke-static {p1, p2}, Lk/M0;->c(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p1, p2}, LD5/g;->o(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_4
    const v0, 0x7f08003f

    if-ne p2, v0, :cond_5

    invoke-static {p1, v1}, LD5/g;->o(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_5
    const v0, 0x7f080044

    if-ne p2, v0, :cond_6

    const p2, 0x7f040112

    invoke-static {p1, p2}, Lk/M0;->c(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p1, p2}, LD5/g;->o(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_6
    const v0, 0x7f08007a

    if-eq p2, v0, :cond_c

    const v0, 0x7f08007b

    if-ne p2, v0, :cond_7

    goto :goto_1

    :cond_7
    iget-object v0, p0, LD5/g;->b:Ljava/lang/Object;

    check-cast v0, [I

    invoke-static {v0, p2}, LD5/g;->l([II)Z

    move-result v0

    if-eqz v0, :cond_8

    const p2, 0x7f040118

    invoke-static {p1, p2}, Lk/M0;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_8
    iget-object v0, p0, LD5/g;->e:Ljava/lang/Object;

    check-cast v0, [I

    invoke-static {v0, p2}, LD5/g;->l([II)Z

    move-result v0

    if-eqz v0, :cond_9

    const p2, 0x7f060014

    invoke-static {p1, p2}, LH3/u0;->o(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_9
    iget-object v0, p0, LD5/g;->f:Ljava/lang/Object;

    check-cast v0, [I

    invoke-static {v0, p2}, LD5/g;->l([II)Z

    move-result v0

    if-eqz v0, :cond_a

    const p2, 0x7f060013

    invoke-static {p1, p2}, LH3/u0;->o(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_a
    const v0, 0x7f080077

    if-ne p2, v0, :cond_b

    const p2, 0x7f060016

    invoke-static {p1, p2}, LH3/u0;->o(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1

    :cond_c
    :goto_1
    const p2, 0x7f060017

    invoke-static {p1, p2}, LH3/u0;->o(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public v(J)V
    .locals 4

    iget-object v0, p0, LD5/g;->b:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    iget-object v1, p0, LD5/g;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    iget-object v2, p0, LD5/g;->e:Ljava/lang/Object;

    check-cast v2, Ln0/n;

    invoke-interface {v2, p1, p2}, Ln0/n;->e(J)V

    iget-object v3, p0, LD5/g;->f:Ljava/lang/Object;

    check-cast v3, Ln0/n;

    if-eqz v3, :cond_0

    invoke-interface {v3, p1, p2}, Ln0/n;->e(J)V

    :cond_0
    invoke-interface {v2}, Ln0/n;->c()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, LD5/g;->f:Ljava/lang/Object;

    check-cast p1, Ln0/n;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ln0/n;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LD5/g;->f:Ljava/lang/Object;

    check-cast p1, Ln0/n;

    invoke-interface {p1, v1, v0}, Ln0/n;->g(Ljava/util/HashMap;Landroid/util/SparseArray;)V

    invoke-interface {v2, v1}, Ln0/n;->a(Ljava/util/HashMap;)V

    goto :goto_0

    :cond_1
    invoke-interface {v2, v1, v0}, Ln0/n;->g(Ljava/util/HashMap;Landroid/util/SparseArray;)V

    :goto_0
    iget-object p1, p0, LD5/g;->f:Ljava/lang/Object;

    check-cast p1, Ln0/n;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ln0/n;->h()V

    const/4 p1, 0x0

    iput-object p1, p0, LD5/g;->f:Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, LD5/g;->b:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    iget-object v1, p0, LD5/g;->d:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseBooleanArray;

    iget-object v2, p0, LD5/g;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln0/l;

    if-eqz v3, :cond_1

    iget-object v4, v3, Ln0/l;->c:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Ln0/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, v3, Ln0/l;->a:I

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    iget-object v4, p0, LD5/g;->e:Ljava/lang/Object;

    check-cast v4, Ln0/n;

    invoke-interface {v4, v3, v2}, Ln0/n;->b(Ln0/l;Z)V

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, LD5/g;->c:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_1
    return-void
.end method

.method public x(Ljava/lang/String;Ljava/util/concurrent/Executor;)LL2/r;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, LD5/g;->b:Ljava/lang/Object;

    check-cast v0, LK3/a;

    invoke-virtual {v0}, LK3/a;->b()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v0, 0x1

    check-cast v7, Ljava/io/File;

    :try_start_0
    sget-object v0, LK3/a;->g:LI3/a;

    invoke-static {v7}, LK3/a;->e(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, LI3/a;->i(Ljava/lang/String;)LH3/B;

    move-result-object v0

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, LE3/b;

    invoke-direct {v10, v0, v9, v7}, LE3/b;-><init>(LH3/B;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Could not load report file "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "; deleting"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "FirebaseCrashlytics"

    invoke-static {v10, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :goto_1
    move v0, v8

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_9

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    check-cast v7, LE3/b;

    if-eqz v2, :cond_2

    iget-object v8, v7, LE3/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_3

    :cond_1
    move-object/from16 v11, p2

    goto :goto_2

    :cond_2
    :goto_3
    iget-object v8, v1, LD5/g;->c:Ljava/lang/Object;

    check-cast v8, LL3/a;

    iget-object v9, v7, LE3/b;->a:LH3/B;

    iget-object v10, v9, LH3/B;->f:Ljava/lang/String;

    const/4 v11, 0x1

    if-eqz v10, :cond_3

    iget-object v9, v9, LH3/B;->g:Ljava/lang/String;

    if-nez v9, :cond_4

    :cond_3
    iget-object v9, v1, LD5/g;->f:Ljava/lang/Object;

    check-cast v9, LE3/w;

    invoke-virtual {v9, v11}, LE3/w;->b(Z)LE3/v;

    move-result-object v9

    iget-object v10, v7, LE3/b;->a:LH3/B;

    iget-object v12, v9, LE3/v;->a:Ljava/lang/String;

    invoke-virtual {v10}, LH3/B;->a()LH3/A;

    move-result-object v10

    iput-object v12, v10, LH3/A;->e:Ljava/lang/String;

    invoke-virtual {v10}, LH3/A;->a()LH3/B;

    move-result-object v10

    iget-object v9, v9, LE3/v;->b:Ljava/lang/String;

    invoke-virtual {v10}, LH3/B;->a()LH3/A;

    move-result-object v10

    iput-object v9, v10, LH3/A;->f:Ljava/lang/String;

    invoke-virtual {v10}, LH3/A;->a()LH3/B;

    move-result-object v9

    iget-object v10, v7, LE3/b;->b:Ljava/lang/String;

    iget-object v7, v7, LE3/b;->c:Ljava/io/File;

    new-instance v12, LE3/b;

    invoke-direct {v12, v9, v10, v7}, LE3/b;-><init>(LH3/B;Ljava/lang/String;Ljava/io/File;)V

    move-object v7, v12

    :cond_4
    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    :goto_4
    iget-object v8, v8, LL3/a;->a:LL3/b;

    const-string v9, "Dropping report due to queue being full: "

    const-string v10, "Closing task for report: "

    const-string v12, "Queue size: "

    const-string v13, "Enqueueing report: "

    iget-object v14, v8, LL3/b;->f:Ljava/util/concurrent/ArrayBlockingQueue;

    monitor-enter v14

    :try_start_1
    new-instance v15, LL2/i;

    invoke-direct {v15}, LL2/i;-><init>()V

    if-eqz v11, :cond_8

    iget-object v11, v8, LL3/b;->i:LA/j;

    iget-object v11, v11, LA/j;->q:Ljava/lang/Object;

    check-cast v11, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    iget-object v11, v8, LL3/b;->f:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v11}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v11

    iget v6, v8, LL3/b;->e:I

    if-ge v11, v6, :cond_6

    sget-object v6, LB3/d;->a:LB3/d;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v7, LE3/b;->b:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, LB3/d;->b(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v8, LL3/b;->f:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v11}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, LB3/d;->b(Ljava/lang/String;)V

    iget-object v9, v8, LL3/b;->g:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v11, LE1/s;

    invoke-direct {v11, v8, v7, v15}, LE1/s;-><init>(LL3/b;LE3/b;LL2/i;)V

    invoke-virtual {v9, v11}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v7, LE3/b;->b:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, LB3/d;->b(Ljava/lang/String;)V

    invoke-virtual {v15, v7}, LL2/i;->b(Ljava/lang/Object;)V

    monitor-exit v14

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_6
    invoke-virtual {v8}, LL3/b;->a()I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v7, LE3/b;->b:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "FirebaseCrashlytics"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "FirebaseCrashlytics"

    const/4 v10, 0x0

    invoke-static {v9, v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    iget-object v6, v8, LL3/b;->i:LA/j;

    iget-object v6, v6, LA/j;->r:Ljava/lang/Object;

    check-cast v6, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    invoke-virtual {v15, v7}, LL2/i;->b(Ljava/lang/Object;)V

    monitor-exit v14

    goto :goto_5

    :cond_8
    invoke-virtual {v8, v7, v15}, LL3/b;->b(LE3/b;LL2/i;)V

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    iget-object v6, v15, LL2/i;->a:LL2/r;

    new-instance v7, LA3/b;

    const/4 v8, 0x7

    invoke-direct {v7, v8, v1}, LA3/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, LL2/r;

    invoke-direct {v8}, LL2/r;-><init>()V

    new-instance v9, LL2/l;

    const/4 v10, 0x0

    move-object/from16 v11, p2

    invoke-direct {v9, v11, v7, v8, v10}, LL2/l;-><init>(Ljava/util/concurrent/Executor;LL2/a;LL2/r;I)V

    iget-object v7, v6, LL2/r;->b:Lcom/bumptech/glide/manager/r;

    invoke-virtual {v7, v9}, Lcom/bumptech/glide/manager/r;->k(LL2/n;)V

    invoke-virtual {v6}, LL2/r;->n()V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :goto_6
    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_9
    invoke-static {v0}, LE5/l;->D(Ljava/util/List;)LL2/r;

    move-result-object v0

    return-object v0
.end method

.method public z()V
    .locals 5

    iget-object v0, p0, LD5/g;->e:Ljava/lang/Object;

    check-cast v0, Ln0/n;

    iget-object v1, p0, LD5/g;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    invoke-interface {v0, v1}, Ln0/n;->d(Ljava/util/HashMap;)V

    iget-object v0, p0, LD5/g;->c:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, LD5/g;->b:Ljava/lang/Object;

    check-cast v3, Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v0, p0, LD5/g;->d:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    return-void
.end method
