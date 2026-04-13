.class public final LA5/m;
.super Le5/h;

# interfaces
.implements Ld5/a;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LA5/m;->b:I

    iput-object p2, p0, LA5/m;->q:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Le5/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 29

    move-object/from16 v1, p0

    iget v0, v1, LA5/m;->b:I

    const/4 v3, 0x0

    iget-object v4, v1, LA5/m;->q:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast v4, Ljava/util/List;

    return-object v4

    :pswitch_0
    check-cast v4, Landroidx/lifecycle/M;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Le5/n;->a:Le5/o;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Le5/d;

    const-class v6, Landroidx/lifecycle/I;

    invoke-direct {v5, v6}, Le5/d;-><init>(Ljava/lang/Class;)V

    new-instance v7, Lg0/c;

    invoke-interface {v5}, Le5/c;->a()Ljava/lang/Class;

    move-result-object v5

    const-string v8, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>"

    invoke-static {v5, v8}, Le5/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v5}, Lg0/c;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v5, v3, [Lg0/c;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg0/c;

    array-length v5, v0

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg0/c;

    const-string v5, "initializers"

    invoke-static {v0, v5}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Landroidx/lifecycle/M;->b()Landroidx/lifecycle/L;

    move-result-object v5

    instance-of v7, v4, Landroidx/lifecycle/h;

    if-eqz v7, :cond_0

    check-cast v4, Landroidx/lifecycle/h;

    invoke-interface {v4}, Landroidx/lifecycle/h;->a()Lg0/b;

    move-result-object v4

    goto :goto_0

    :cond_0
    sget-object v4, Lg0/a;->b:Lg0/a;

    :goto_0
    const-string v7, "store"

    invoke-static {v5, v7}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v5, Landroidx/lifecycle/L;->a:Ljava/util/LinkedHashMap;

    const-string v7, "defaultCreationExtras"

    invoke-static {v4, v7}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "androidx.lifecycle.internal.SavedStateHandlesVM"

    invoke-virtual {v5, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/lifecycle/J;

    invoke-virtual {v6, v8}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v0, "null cannot be cast to non-null type T of androidx.lifecycle.ViewModelProvider.get"

    invoke-static {v8, v0}, Le5/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v4, v4, LL1/a;->a:Ljava/lang/Object;

    check-cast v4, Ljava/util/LinkedHashMap;

    invoke-interface {v8, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    sget-object v4, Landroidx/lifecycle/K;->b:Landroidx/lifecycle/K;

    invoke-interface {v8, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    array-length v4, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v8, v0, v3

    iget-object v8, v8, Lg0/c;->a:Ljava/lang/Class;

    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v2, Landroidx/lifecycle/I;

    invoke-direct {v2}, Landroidx/lifecycle/I;-><init>()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_5

    invoke-interface {v5, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/J;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/lifecycle/J;->a()V

    :cond_4
    move-object v8, v2

    :goto_2
    check-cast v8, Landroidx/lifecycle/I;

    return-object v8

    :cond_5
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "No initializer set for given class "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Factory.create(String) is unsupported.  This Factory requires `CreationExtras` to be passed into `create` method."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-object v0, LL5/e;->c:LK5/x;

    check-cast v4, Ljava/lang/ClassLoader;

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    const-string v5, "getResources(\"\")"

    invoke-static {v0, v5}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v5, "list(this)"

    invoke-static {v0, v5}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v3

    :cond_6
    :goto_3
    const-string v9, "it"

    if-ge v8, v7, :cond_8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v8, v8, 0x1

    check-cast v10, Ljava/net/URL;

    sget-object v11, LL5/e;->c:LK5/x;

    invoke-static {v10, v9}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v9

    const-string v11, "file"

    invoke-static {v9, v11}, Le5/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const/4 v11, 0x0

    goto :goto_4

    :cond_7
    sget-object v9, LK5/n;->a:LK5/t;

    sget-object v11, LK5/x;->q:Ljava/lang/String;

    new-instance v11, Ljava/io/File;

    invoke-virtual {v10}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-static {v11}, Lh3/e;->u(Ljava/io/File;)LK5/x;

    move-result-object v10

    new-instance v11, LS4/d;

    invoke-direct {v11, v9, v10}, LS4/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4
    if-eqz v11, :cond_6

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    const-string v0, "META-INF/MANIFEST.MF"

    invoke-virtual {v4, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    const-string v4, "getResources(\"META-INF/MANIFEST.MF\")"

    invoke-static {v0, v4}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, v5}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v7, v3

    :goto_5
    if-ge v7, v5, :cond_18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Ljava/net/URL;

    sget-object v10, LL5/e;->c:LK5/x;

    invoke-static {v8, v9}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "toString()"

    invoke-static {v8, v10}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "jar:file:"

    invoke-static {v8, v10, v3}, Lk5/n;->H(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_9

    :goto_6
    move-object v15, v0

    const/4 v2, 0x0

    goto/16 :goto_f

    :cond_9
    invoke-static {v8}, Lk5/f;->K(Ljava/lang/CharSequence;)I

    move-result v10

    const-string v11, "<this>"

    invoke-static {v8, v11}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "!"

    invoke-virtual {v8, v11, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_a

    goto :goto_6

    :cond_a
    sget-object v11, LK5/x;->q:Ljava/lang/String;

    new-instance v11, Ljava/io/File;

    const/4 v12, 0x4

    invoke-virtual {v8, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v10, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v8, v10}, Le5/g;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v8

    invoke-direct {v11, v8}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-static {v11}, Lh3/e;->u(Ljava/io/File;)LK5/x;

    move-result-object v8

    sget-object v10, LK5/n;->a:LK5/t;

    const-string v11, "not a zip: size="

    const-string v12, "fileSystem"

    invoke-static {v10, v12}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v8}, LK5/t;->f(LK5/x;)LK5/s;

    move-result-object v12

    :try_start_2
    invoke-virtual {v12}, LK5/s;->size()J

    move-result-wide v13

    const/16 v15, 0x16

    int-to-long v2, v15

    sub-long/2addr v13, v2

    const-wide/16 v2, 0x0

    cmp-long v15, v13, v2

    if-ltz v15, :cond_17

    const-wide/32 v16, 0x10000

    move-object v15, v0

    sub-long v0, v13, v16

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_7
    invoke-virtual {v12, v13, v14}, LK5/s;->b(J)LK5/l;

    move-result-object v11

    invoke-static {v11}, LE2/g;->b(LK5/F;)LK5/z;

    move-result-object v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-wide/from16 v16, v2

    :try_start_3
    invoke-virtual {v11}, LK5/z;->f()I

    move-result v2

    const v3, 0x6054b50

    if-ne v2, v3, :cond_15

    invoke-virtual {v11}, LK5/z;->r()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    invoke-virtual {v11}, LK5/z;->r()S

    move-result v2

    and-int/2addr v2, v1

    invoke-virtual {v11}, LK5/z;->r()S

    move-result v3

    and-int/2addr v3, v1

    move/from16 v18, v1

    move/from16 v19, v2

    int-to-long v1, v3

    invoke-virtual {v11}, LK5/z;->r()S

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    and-int v3, v3, v18

    move/from16 v20, v0

    move-wide/from16 v21, v1

    int-to-long v0, v3

    cmp-long v0, v21, v0

    const-string v1, "unsupported zip: spanned"

    if-nez v0, :cond_14

    if-nez v20, :cond_14

    if-nez v19, :cond_14

    const-wide/16 v2, 0x4

    :try_start_4
    invoke-virtual {v11, v2, v3}, LK5/z;->skip(J)V

    invoke-virtual {v11}, LK5/z;->f()I

    move-result v0

    int-to-long v2, v0

    const-wide v19, 0xffffffffL

    and-long v2, v2, v19

    invoke-virtual {v11}, LK5/z;->r()S

    move-result v0

    and-int v19, v0, v18

    new-instance v18, LG0/y;

    move-wide/from16 v20, v21

    move-wide/from16 v22, v2

    invoke-direct/range {v18 .. v23}, LG0/y;-><init>(IJJ)V

    move/from16 v0, v19

    int-to-long v2, v0

    invoke-virtual {v11, v2, v3}, LK5/z;->s(J)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    :try_start_5
    invoke-virtual {v11}, LK5/z;->close()V

    const/16 v2, 0x14

    int-to-long v2, v2

    sub-long/2addr v13, v2

    cmp-long v2, v13, v16

    if-lez v2, :cond_f

    invoke-virtual {v12, v13, v14}, LK5/s;->b(J)LK5/l;

    move-result-object v2

    invoke-static {v2}, LE2/g;->b(LK5/F;)LK5/z;

    move-result-object v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-virtual {v2}, LK5/z;->f()I

    move-result v3

    const v11, 0x7064b50

    if-ne v3, v11, :cond_e

    invoke-virtual {v2}, LK5/z;->f()I

    move-result v3

    invoke-virtual {v2}, LK5/z;->h()J

    move-result-wide v13

    invoke-virtual {v2}, LK5/z;->f()I

    move-result v11

    move/from16 v19, v0

    const/4 v0, 0x1

    if-ne v11, v0, :cond_d

    if-nez v3, :cond_d

    invoke-virtual {v12, v13, v14}, LK5/s;->b(J)LK5/l;

    move-result-object v0

    invoke-static {v0}, LE2/g;->b(LK5/F;)LK5/z;

    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v3}, LK5/z;->f()I

    move-result v0

    const v11, 0x6064b50

    if-ne v0, v11, :cond_c

    const-wide/16 v13, 0xc

    invoke-virtual {v3, v13, v14}, LK5/z;->skip(J)V

    invoke-virtual {v3}, LK5/z;->f()I

    move-result v0

    invoke-virtual {v3}, LK5/z;->f()I

    move-result v11

    invoke-virtual {v3}, LK5/z;->h()J

    move-result-wide v25

    invoke-virtual {v3}, LK5/z;->h()J

    move-result-wide v13

    cmp-long v13, v25, v13

    if-nez v13, :cond_b

    if-nez v0, :cond_b

    if-nez v11, :cond_b

    const-wide/16 v0, 0x8

    invoke-virtual {v3, v0, v1}, LK5/z;->skip(J)V

    invoke-virtual {v3}, LK5/z;->h()J

    move-result-wide v27

    new-instance v23, LG0/y;

    move/from16 v24, v19

    invoke-direct/range {v23 .. v28}, LG0/y;-><init>(IJJ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-virtual {v3}, LK5/z;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 v18, v23

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_b

    :cond_b
    :try_start_9
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_8
    move-object v1, v0

    goto :goto_9

    :cond_c
    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad zip: expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11}, LL5/b;->c(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " but was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, LL5/b;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_8

    :goto_9
    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_b
    invoke-static {v3, v1}, La/a;->h(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_e
    :goto_a
    :try_start_c
    invoke-virtual {v2}, LK5/z;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :cond_f
    move-object/from16 v0, v18

    goto :goto_c

    :catchall_3
    move-exception v0

    move-object v1, v0

    goto/16 :goto_12

    :goto_b
    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_e
    invoke-static {v2, v1}, La/a;->h(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :goto_c
    iget-wide v1, v0, LG0/y;->b:J

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12, v1, v2}, LK5/s;->b(J)LK5/l;

    move-result-object v11

    invoke-static {v11}, LE2/g;->b(LK5/F;)LK5/z;

    move-result-object v11
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    iget-wide v13, v0, LG0/y;->a:J

    :goto_d
    cmp-long v0, v16, v13

    if-gez v0, :cond_12

    invoke-static {v11}, LL5/b;->d(LK5/z;)LL5/f;

    move-result-object v0

    move-wide/from16 v18, v1

    iget-wide v1, v0, LL5/f;->g:J

    cmp-long v1, v1, v18

    if-gez v1, :cond_11

    sget-object v1, LL5/e;->c:LK5/x;

    iget-object v1, v0, LL5/f;->a:LK5/x;

    invoke-static {v1}, LW3/e;->o(LK5/x;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :catchall_5
    move-exception v0

    move-object v1, v0

    goto :goto_10

    :cond_10
    :goto_e
    const-wide/16 v0, 0x1

    add-long v16, v16, v0

    move-wide/from16 v1, v18

    goto :goto_d

    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad zip: local file header offset >= central directory offset"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :cond_12
    :try_start_10
    invoke-virtual {v11}, LK5/z;->close()V

    invoke-static {v3}, LL5/b;->b(Ljava/util/ArrayList;)Ljava/util/LinkedHashMap;

    move-result-object v0

    new-instance v1, LK5/I;

    invoke-direct {v1, v8, v10, v0}, LK5/I;-><init>(LK5/x;LK5/n;Ljava/util/LinkedHashMap;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    invoke-virtual {v12}, LK5/s;->close()V

    sget-object v0, LL5/e;->c:LK5/x;

    new-instance v2, LS4/d;

    invoke-direct {v2, v1, v0}, LS4/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_f
    if-eqz v2, :cond_13

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    move-object/from16 v1, p0

    move-object v0, v15

    const/4 v3, 0x0

    goto/16 :goto_5

    :goto_10
    :try_start_11
    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :catchall_6
    move-exception v0

    :try_start_12
    invoke-static {v11, v1}, La/a;->h(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :catchall_7
    move-exception v0

    goto :goto_11

    :cond_14
    :try_start_13
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :cond_15
    :try_start_14
    invoke-virtual {v11}, LK5/z;->close()V

    const-wide/16 v2, -0x1

    add-long/2addr v13, v2

    cmp-long v2, v13, v0

    if-ltz v2, :cond_16

    move-wide/from16 v2, v16

    goto/16 :goto_7

    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not a zip: end of central directory signature not found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_11
    invoke-virtual {v11}, LK5/z;->close()V

    throw v0

    :cond_17
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, LK5/s;->size()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    :goto_12
    :try_start_15
    throw v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    :catchall_8
    move-exception v0

    invoke-static {v12, v1}, La/a;->h(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_18
    invoke-static {v6, v4}, LT4/g;->B(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :pswitch_2
    check-cast v4, LA5/n;

    iget-object v0, v4, LA5/n;->d:Lw5/n;

    invoke-static {v0}, Le5/g;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lw5/n;->a()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, LT4/i;->u(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    if-eqz v2, :cond_19

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
