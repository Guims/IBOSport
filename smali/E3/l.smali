.class public final LE3/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/Throwable;

.field public final synthetic c:Ljava/lang/Thread;

.field public final synthetic d:LM3/c;

.field public final synthetic e:LE3/n;


# direct methods
.method public constructor <init>(LE3/n;JLjava/lang/Throwable;Ljava/lang/Thread;LM3/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE3/l;->e:LE3/n;

    iput-wide p2, p0, LE3/l;->a:J

    iput-object p4, p0, LE3/l;->b:Ljava/lang/Throwable;

    iput-object p5, p0, LE3/l;->c:Ljava/lang/Thread;

    iput-object p6, p0, LE3/l;->d:LM3/c;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 34

    move-object/from16 v1, p0

    const-wide/16 v2, 0x3e8

    iget-wide v4, v1, LE3/l;->a:J

    div-long v2, v4, v2

    iget-object v6, v1, LE3/l;->e:LE3/n;

    iget-object v0, v6, LE3/n;->m:LD5/g;

    iget-object v0, v0, LD5/g;->b:Ljava/lang/Object;

    check-cast v0, LK3/a;

    invoke-virtual {v0}, LK3/a;->c()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_0

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object v7, v8

    :goto_0
    const-string v9, "FirebaseCrashlytics"

    if-nez v7, :cond_1

    const-string v0, "Tried to write a fatal exception while no session was open."

    invoke-static {v9, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v8}, LE5/l;->t(Ljava/lang/Object;)LL2/r;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, v6, LE3/n;->c:LA/j;

    invoke-virtual {v0}, LA/j;->o()V

    iget-object v0, v6, LE3/n;->m:LD5/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "Persisting fatal event for session "

    invoke-virtual {v10, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    invoke-static {v9, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {v9, v10, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    iget-object v10, v0, LD5/g;->a:Ljava/lang/Object;

    check-cast v10, LE3/r;

    iget-object v11, v10, LE3/r;->a:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->orientation:I

    iget-object v13, v10, LE3/r;->d:LA/j;

    new-instance v14, Ljava/util/Stack;

    invoke-direct {v14}, Ljava/util/Stack;-><init>()V

    iget-object v15, v1, LE3/l;->b:Ljava/lang/Throwable;

    :goto_1
    if-eqz v15, :cond_3

    invoke-virtual {v14, v15}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v15

    goto :goto_1

    :cond_3
    move-object/from16 v20, v8

    :goto_2
    invoke-virtual {v14}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_4

    invoke-virtual {v14}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Throwable;

    new-instance v16, LK1/c;

    invoke-virtual {v15}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v15}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v15

    invoke-virtual {v13, v15}, LA/j;->g([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v19

    const/16 v21, 0x1

    invoke-direct/range {v16 .. v21}, LK1/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v20, v16

    goto :goto_2

    :cond_4
    move-object/from16 v15, v20

    new-instance v14, LH3/O;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    move-object/from16 v21, v8

    const-string v8, "crash"

    iput-object v8, v14, LH3/O;->b:Ljava/lang/String;

    iput-wide v2, v14, LH3/O;->a:J

    iget-byte v2, v14, LH3/O;->g:B

    const/4 v3, 0x1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, v14, LH3/O;->g:B

    sget-object v2, LB3/d;->b:LB3/d;

    invoke-virtual {v2, v11}, LB3/d;->d(Landroid/content/Context;)LH3/D0;

    move-result-object v18

    move-object/from16 v2, v18

    check-cast v2, LH3/a0;

    iget v2, v2, LH3/a0;->c:I

    if-lez v2, :cond_6

    const/16 v8, 0x64

    if-eq v2, v8, :cond_5

    move v2, v3

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v17, v2

    goto :goto_4

    :cond_6
    move-object/from16 v17, v21

    :goto_4
    invoke-static {v11}, LB3/d;->c(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v19

    int-to-byte v2, v3

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, v15, LK1/c;->s:Ljava/lang/Object;

    check-cast v11, [Ljava/lang/StackTraceElement;

    iget-object v3, v1, LE3/l;->c:Ljava/lang/Thread;

    move/from16 v20, v12

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v16, v14

    const-string v14, "Null name"

    if-eqz v12, :cond_15

    move-object/from16 v22, v9

    const/4 v1, 0x1

    int-to-byte v9, v1

    const/4 v1, 0x4

    invoke-static {v11, v1}, LE3/r;->d([Ljava/lang/StackTraceElement;I)Ljava/util/List;

    move-result-object v11

    const-string v1, "Null frames"

    if-eqz v11, :cond_14

    move-wide/from16 v24, v4

    const-string v4, " importance"

    const-string v5, "Missing required properties:"

    move-object/from16 v26, v6

    const/4 v6, 0x1

    if-ne v9, v6, :cond_12

    new-instance v6, LH3/W;

    move-object/from16 v27, v7

    const/4 v7, 0x4

    invoke-direct {v6, v12, v7, v11}, LH3/W;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Thread;

    invoke-virtual {v11, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/StackTraceElement;

    invoke-virtual {v13, v7}, LA/j;->g([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-virtual {v11}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_a

    const/4 v12, 0x0

    invoke-static {v7, v12}, LE3/r;->d([Ljava/lang/StackTraceElement;I)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_9

    const/4 v12, 0x1

    if-ne v9, v12, :cond_7

    new-instance v12, LH3/W;

    move-object/from16 v23, v3

    const/4 v3, 0x0

    invoke-direct {v12, v11, v3, v7}, LH3/W;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v9, :cond_8

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v5, v0}, LB/f;->p(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v14}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-object/from16 v23, v3

    :goto_6
    move-object/from16 v3, v23

    goto :goto_5

    :cond_c
    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v29

    const/4 v3, 0x0

    invoke-static {v15, v3}, LE3/r;->c(LK1/c;I)LH3/U;

    move-result-object v30

    invoke-static {}, LE3/r;->e()LH3/V;

    move-result-object v32

    invoke-virtual {v10}, LE3/r;->a()Ljava/util/List;

    move-result-object v33

    if-eqz v33, :cond_11

    new-instance v28, LH3/S;

    const/16 v31, 0x0

    invoke-direct/range {v28 .. v33}, LH3/S;-><init>(Ljava/util/List;LH3/U;LH3/q0;LH3/V;Ljava/util/List;)V

    const/4 v1, 0x1

    if-ne v2, v1, :cond_f

    new-instance v13, LH3/Q;

    const/4 v15, 0x0

    move-object/from16 v1, v16

    const/16 v16, 0x0

    move-object/from16 v14, v28

    invoke-direct/range {v13 .. v20}, LH3/Q;-><init>(LH3/S;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;LH3/D0;Ljava/util/List;I)V

    move/from16 v2, v20

    iput-object v13, v1, LH3/O;->c:LH3/E0;

    invoke-virtual {v10, v2}, LE3/r;->b(I)LH3/c0;

    move-result-object v2

    iput-object v2, v1, LH3/O;->d:LH3/F0;

    invoke-virtual {v1}, LH3/O;->a()LH3/P;

    move-result-object v1

    iget-object v2, v0, LD5/g;->d:Ljava/lang/Object;

    check-cast v2, LG3/e;

    iget-object v3, v0, LD5/g;->e:Ljava/lang/Object;

    check-cast v3, LK3/c;

    sget-object v4, LT4/q;->b:LT4/q;

    invoke-static {v1, v2, v3, v4}, LD5/g;->j(LH3/P;LG3/e;LK3/c;Ljava/util/Map;)LH3/P;

    move-result-object v1

    invoke-static {v1, v3}, LD5/g;->k(LH3/P;LK3/c;)LH3/K0;

    move-result-object v1

    iget-object v0, v0, LD5/g;->b:Ljava/lang/Object;

    check-cast v0, LK3/a;

    move-object/from16 v8, v27

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v8, v6}, LK3/a;->d(LH3/K0;Ljava/lang/String;Z)V

    const-string v0, ".ae"

    move-object/from16 v1, v26

    :try_start_0
    iget-object v2, v1, LE3/n;->g:LK3/c;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v4, v24

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/io/File;

    iget-object v2, v2, LK3/c;->r:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_7
    move-object/from16 v3, p0

    goto :goto_8

    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Create new file failed."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "Could not create app exception marker file."

    move-object/from16 v3, v22

    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :goto_8
    iget-object v0, v3, LE3/l;->d:LM3/c;

    const/4 v12, 0x0

    invoke-virtual {v1, v12, v0, v12}, LE3/n;->b(ZLM3/c;Z)V

    new-instance v2, LE3/e;

    invoke-direct {v2}, LE3/e;-><init>()V

    iget-object v2, v2, LE3/e;->a:Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v4}, LE3/n;->c(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v2, v1, LE3/n;->b:LE1/E;

    invoke-virtual {v2}, LE1/E;->a()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static/range {v21 .. v21}, LE5/l;->t(Ljava/lang/Object;)LL2/r;

    move-result-object v0

    return-object v0

    :cond_e
    iget-object v0, v0, LM3/c;->i:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LL2/i;

    iget-object v0, v0, LL2/i;->a:LL2/r;

    iget-object v1, v1, LE3/n;->e:LF3/d;

    iget-object v1, v1, LF3/d;->a:LF3/c;

    new-instance v2, Le4/c;

    invoke-direct {v2, v3, v8}, Le4/c;-><init>(LE3/l;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, LL2/r;->h(Ljava/util/concurrent/Executor;LL2/h;)LL2/r;

    move-result-object v0

    return-object v0

    :cond_f
    move-object/from16 v3, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v2, :cond_10

    const-string v1, " uiOrientation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v5, v0}, LB/f;->p(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    move-object/from16 v3, p0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null binaries"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    move-object/from16 v3, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v9, :cond_13

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v5, v0}, LB/f;->p(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    move-object/from16 v3, p0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    move-object v3, v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v14}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
