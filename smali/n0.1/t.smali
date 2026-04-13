.class public final Ln0/t;
.super Ljava/lang/Object;

# interfaces
.implements Ln0/b;


# static fields
.field public static final i:Ljava/util/HashSet;


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ln0/q;

.field public final c:LD5/g;

.field public final d:Ln0/h;

.field public final e:Ljava/util/HashMap;

.field public final f:Ljava/util/Random;

.field public g:J

.field public h:Ln0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Ln0/t;->i:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ln0/q;Lm0/a;)V
    .locals 6

    new-instance v0, LD5/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, LD5/g;->a:Ljava/lang/Object;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, LD5/g;->b:Ljava/lang/Object;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, v0, LD5/g;->c:Ljava/lang/Object;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, v0, LD5/g;->d:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    new-instance v2, Ln0/m;

    invoke-direct {v2, p3}, Ln0/m;-><init>(Lm0/a;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    new-instance v3, Lib/player/base/helper/c;

    new-instance v4, Ljava/io/File;

    const-string v5, "cached_content_index.exi"

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lib/player/base/helper/c;-><init>(Ljava/io/File;)V

    if-eqz v2, :cond_1

    iput-object v2, v0, LD5/g;->e:Ljava/lang/Object;

    iput-object v3, v0, LD5/g;->f:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    sget v4, Lk0/C;->a:I

    iput-object v3, v0, LD5/g;->e:Ljava/lang/Object;

    iput-object v2, v0, LD5/g;->f:Ljava/lang/Object;

    :goto_1
    if-eqz p3, :cond_2

    new-instance v1, Ln0/h;

    invoke-direct {v1, p3}, Ln0/h;-><init>(Lm0/a;)V

    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class p3, Ln0/t;

    monitor-enter p3

    :try_start_0
    sget-object v2, Ln0/t;->i:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p3

    if-eqz v2, :cond_3

    iput-object p1, p0, Ln0/t;->a:Ljava/io/File;

    iput-object p2, p0, Ln0/t;->b:Ln0/q;

    iput-object v0, p0, Ln0/t;->c:LD5/g;

    iput-object v1, p0, Ln0/t;->d:Ln0/h;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ln0/t;->e:Ljava/util/HashMap;

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Ln0/t;->f:Ljava/util/Random;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Ln0/t;->g:J

    new-instance p1, Landroid/os/ConditionVariable;

    invoke-direct {p1}, Landroid/os/ConditionVariable;-><init>()V

    new-instance p2, Ln0/s;

    invoke-direct {p2, p0, p1}, Ln0/s;-><init>(Ln0/t;Landroid/os/ConditionVariable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->block()V

    return-void

    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Another SimpleCache instance uses the folder: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static a(Ln0/t;)V
    .locals 13

    iget-object v0, p0, Ln0/t;->d:Ln0/h;

    iget-object v1, p0, Ln0/t;->c:LD5/g;

    iget-object v2, p0, Ln0/t;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    invoke-static {v2}, Ln0/t;->e(Ljava/io/File;)V
    :try_end_0
    .catch Ln0/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Ln0/t;->h:Ln0/a;

    goto/16 :goto_7

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    const-string v4, "SimpleCache"

    if-nez v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to list cache directory files: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lk0/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ln0/a;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ln0/t;->h:Ln0/a;

    return-void

    :cond_1
    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    const-wide/16 v8, -0x1

    if-ge v7, v5, :cond_3

    aget-object v10, v3, v7

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, ".uid"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/16 v12, 0x2e

    :try_start_1
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    invoke-virtual {v11, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Malformed UID file: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lk0/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    move-wide v5, v8

    :goto_2
    iput-wide v5, p0, Ln0/t;->g:J

    cmp-long v5, v5, v8

    if-nez v5, :cond_4

    :try_start_2
    invoke-static {v2}, Ln0/t;->f(Ljava/io/File;)J

    move-result-wide v5

    iput-wide v5, p0, Ln0/t;->g:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to create cache UID: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Lk0/c;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Ln0/a;

    invoke-direct {v2, v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v2, p0, Ln0/t;->h:Ln0/a;

    goto :goto_7

    :cond_4
    :goto_3
    :try_start_3
    iget-wide v5, p0, Ln0/t;->g:J

    invoke-virtual {v1, v5, v6}, LD5/g;->v(J)V

    const/4 v5, 0x1

    if-eqz v0, :cond_5

    iget-wide v6, p0, Ln0/t;->g:J

    invoke-virtual {v0, v6, v7}, Ln0/h;->c(J)V

    invoke-virtual {v0}, Ln0/h;->b()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {p0, v2, v5, v3, v6}, Ln0/t;->i(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0, v3}, Ln0/h;->d(Ljava/util/Set;)V

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v5, v3, v0}, Ln0/t;->i(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    iget-object p0, v1, LD5/g;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lp3/L;->j(Ljava/util/Collection;)Lp3/L;

    move-result-object p0

    invoke-virtual {p0}, Lp3/L;->l()Lp3/m0;

    move-result-object p0

    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, LD5/g;->w(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    :try_start_4
    invoke-virtual {v1}, LD5/g;->z()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_7

    :catch_4
    move-exception p0

    const-string v0, "Storing index file failed"

    invoke-static {v4, v0, p0}, Lk0/c;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to initialize cache indices: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Lk0/c;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Ln0/a;

    invoke-direct {v2, v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v2, p0, Ln0/t;->h:Ln0/a;

    :goto_7
    return-void
.end method

.method public static e(Ljava/io/File;)V
    .locals 2

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to create cache directory: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SimpleCache"

    invoke-static {v0, p0}, Lk0/c;->o(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ln0/a;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static f(Ljava/io/File;)J
    .locals 5

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    :goto_0
    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string v4, ".uid"

    invoke-static {v2, v4}, Lcom/google/android/material/datepicker/e;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result p0

    if-eqz p0, :cond_1

    return-wide v0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to create UID file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b(Ln0/u;)V
    .locals 2

    iget-object v0, p1, Ln0/j;->b:Ljava/lang/String;

    iget-object v1, p0, Ln0/t;->c:LD5/g;

    invoke-virtual {v1, v0}, LD5/g;->r(Ljava/lang/String;)Ln0/l;

    move-result-object v1

    iget-object v1, v1, Ln0/l;->c:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Ln0/t;->e:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln0/q;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ln0/t;->b:Ln0/q;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final declared-synchronized c(Ljava/lang/String;Ln0/h;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ln0/t;->d()V

    iget-object v0, p0, Ln0/t;->c:LD5/g;

    invoke-virtual {v0, p1}, LD5/g;->r(Ljava/lang/String;)Ln0/l;

    move-result-object p1

    iget-object v1, p1, Ln0/l;->e:Ln0/p;

    invoke-virtual {v1, p2}, Ln0/p;->b(Ln0/h;)Ln0/p;

    move-result-object p2

    iput-object p2, p1, Ln0/l;->e:Ln0/p;

    invoke-virtual {p2, v1}, Ln0/p;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, v0, LD5/g;->e:Ljava/lang/Object;

    check-cast p2, Ln0/n;

    invoke-interface {p2, p1}, Ln0/n;->f(Ln0/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object p1, p0, Ln0/t;->c:LD5/g;

    invoke-virtual {p1}, LD5/g;->z()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    new-instance p2, Ln0/a;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ln0/t;->h:Ln0/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized g(Ljava/lang/String;)Ln0/p;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ln0/t;->c:LD5/g;

    invoke-virtual {v0, p1}, LD5/g;->p(Ljava/lang/String;)Ln0/l;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Ln0/l;->e:Ln0/p;

    goto :goto_0

    :cond_0
    sget-object p1, Ln0/p;->c:Ln0/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
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

.method public final h(JJLjava/lang/String;)Ln0/u;
    .locals 19

    move-object/from16 v9, p0

    iget-object v0, v9, Ln0/t;->c:LD5/g;

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, LD5/g;->p(Ljava/lang/String;)Ln0/l;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ln0/u;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v8}, Ln0/j;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    return-object v0

    :cond_0
    move-wide/from16 v4, p3

    :goto_0
    iget-object v11, v0, Ln0/l;->b:Ljava/lang/String;

    new-instance v10, Ln0/u;

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v18, 0x0

    const-wide/16 v14, -0x1

    move-wide/from16 v12, p1

    invoke-direct/range {v10 .. v18}, Ln0/j;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    iget-object v1, v0, Ln0/l;->c:Ljava/util/TreeSet;

    invoke-virtual {v1, v10}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln0/u;

    if-eqz v2, :cond_1

    iget-wide v6, v2, Ln0/j;->q:J

    iget-wide v11, v2, Ln0/j;->r:J

    add-long/2addr v6, v11

    cmp-long v3, v6, p1

    if-lez v3, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v1, v10}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln0/u;

    if-eqz v1, :cond_3

    iget-wide v1, v1, Ln0/j;->q:J

    sub-long v1, v1, p1

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :goto_1
    move-wide v14, v1

    goto :goto_2

    :cond_3
    move-wide v14, v4

    :goto_2
    iget-object v11, v0, Ln0/l;->b:Ljava/lang/String;

    new-instance v10, Ln0/u;

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v18, 0x0

    move-wide/from16 v12, p1

    invoke-direct/range {v10 .. v18}, Ln0/j;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    move-object v2, v10

    :goto_3
    iget-boolean v1, v2, Ln0/j;->s:Z

    if-eqz v1, :cond_4

    iget-object v1, v2, Ln0/j;->t:Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    iget-wide v10, v2, Ln0/j;->r:J

    cmp-long v1, v6, v10

    if-eqz v1, :cond_4

    invoke-virtual {v9}, Ln0/t;->k()V

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method public final i(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V
    .locals 8

    if-eqz p3, :cond_7

    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_5

    :cond_0
    array-length p1, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_8

    aget-object v2, p3, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_1

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v3, p4}, Ln0/t;->i(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V

    goto :goto_4

    :cond_1
    if-eqz p2, :cond_2

    const-string v4, "cached_content_index.exi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, ".uid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_4

    :cond_2
    if-eqz p4, :cond_3

    invoke-interface {p4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln0/g;

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    iget-wide v4, v3, Ln0/g;->a:J

    iget-wide v6, v3, Ln0/g;->b:J

    :goto_2
    move-wide v3, v4

    move-wide v5, v6

    goto :goto_3

    :cond_4
    const-wide/16 v4, -0x1

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    :goto_3
    iget-object v7, p0, Ln0/t;->c:LD5/g;

    invoke-static/range {v2 .. v7}, Ln0/u;->a(Ljava/io/File;JJLD5/g;)Ln0/u;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v3}, Ln0/t;->b(Ln0/u;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_6
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    :goto_5
    if-nez p2, :cond_8

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_8
    return-void
.end method

.method public final declared-synchronized j(Ln0/u;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ln0/t;->c:LD5/g;

    iget-object v1, p1, Ln0/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, LD5/g;->p(Ljava/lang/String;)Ln0/l;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, p1, Ln0/j;->q:J

    iget-object p1, v0, Ln0/l;->d:Ljava/util/ArrayList;

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln0/k;

    iget-wide v4, v4, Ln0/k;->a:J

    cmp-long v4, v4, v1

    if-nez v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Ln0/t;->c:LD5/g;

    iget-object v0, v0, Ln0/l;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, LD5/g;->w(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final k()V
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Ln0/t;->c:LD5/g;

    iget-object v2, v1, LD5/g;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln0/l;

    iget-object v3, v3, Ln0/l;->c:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln0/j;

    iget-object v5, v4, Ln0/j;->t:Ljava/io/File;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    iget-wide v7, v4, Ln0/j;->r:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln0/j;

    iget-object v4, v3, Ln0/j;->b:Ljava/lang/String;

    iget-object v5, v3, Ln0/j;->t:Ljava/io/File;

    invoke-virtual {v1, v4}, LD5/g;->p(Ljava/lang/String;)Ln0/l;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v6, v4, Ln0/l;->c:Ljava/util/TreeSet;

    invoke-virtual {v6, v3}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_3
    iget-object v6, p0, Ln0/t;->d:Ln0/h;

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    iget-object v7, v6, Ln0/h;->b:Ljava/io/Serializable;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v7, v6, Ln0/h;->a:Ljava/lang/Object;

    check-cast v7, Lm0/a;

    invoke-interface {v7}, Lm0/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iget-object v6, v6, Ln0/h;->b:Ljava/io/Serializable;

    check-cast v6, Ljava/lang/String;

    const-string v8, "name = ?"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v6, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v6

    :try_start_2
    new-instance v7, LI1/c;

    invoke-direct {v7, v6}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    const-string v6, "SimpleCache"

    const-string v7, "Failed to remove file index entry for: "

    invoke-static {v7, v5, v6}, Lcom/google/android/material/datepicker/e;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    iget-object v4, v4, Ln0/l;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, LD5/g;->w(Ljava/lang/String;)V

    iget-object v4, p0, Ln0/t;->e:Ljava/util/HashMap;

    iget-object v3, v3, Ln0/j;->b:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_3
    if-ltz v4, :cond_5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ln0/q;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_5
    iget-object v3, p0, Ln0/t;->b:Ln0/q;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method public final declared-synchronized l(JJLjava/lang/String;)Ln0/u;
    .locals 16

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    monitor-enter p0

    :try_start_0
    invoke-virtual {v1}, Ln0/t;->d()V

    invoke-virtual/range {p0 .. p5}, Ln0/t;->h(JJLjava/lang/String;)Ln0/u;

    move-result-object v0

    iget-boolean v4, v0, Ln0/j;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v4, v1, Ln0/t;->c:LD5/g;

    move-object/from16 v5, p5

    invoke-virtual {v4, v5}, LD5/g;->r(Ljava/lang/String;)Ln0/l;

    move-result-object v4

    iget-wide v5, v0, Ln0/j;->r:J

    iget-object v4, v4, Ln0/l;->d:Ljava/util/ArrayList;

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ln0/k;

    iget-wide v9, v8, Ln0/k;->a:J

    cmp-long v11, v9, v2

    const-wide/16 v12, -0x1

    if-gtz v11, :cond_1

    iget-wide v14, v8, Ln0/k;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v8, v14, v12

    if-eqz v8, :cond_3

    add-long/2addr v9, v14

    cmp-long v8, v9, v2

    if-lez v8, :cond_2

    goto :goto_1

    :cond_1
    cmp-long v8, v5, v12

    if-eqz v8, :cond_3

    add-long v11, v2, v5

    cmp-long v8, v11, v9

    if-lez v8, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :cond_4
    :try_start_2
    new-instance v7, Ln0/k;

    invoke-direct {v7, v2, v3, v5, v6}, Ln0/k;-><init>(JJ)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
