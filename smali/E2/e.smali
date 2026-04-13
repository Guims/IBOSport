.class public final LE2/e;
.super Ljava/lang/Object;


# static fields
.field public static final b:LW3/e;

.field public static c:Ljava/lang/Boolean; = null

.field public static d:Ljava/lang/String; = null

.field public static e:Z = false

.field public static f:I = -0x1

.field public static g:Ljava/lang/Boolean;

.field public static final h:Ljava/lang/ThreadLocal;

.field public static final i:LB5/c;

.field public static final j:Lx2/f;

.field public static k:LE2/k;

.field public static l:LE2/l;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, LE2/e;->h:Ljava/lang/ThreadLocal;

    new-instance v0, LB5/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LB5/c;-><init>(I)V

    sput-object v0, LE2/e;->i:LB5/c;

    new-instance v0, Lx2/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lx2/f;-><init>(I)V

    sput-object v0, LE2/e;->j:Lx2/f;

    new-instance v0, LW3/e;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LW3/e;-><init>(I)V

    sput-object v0, LE2/e;->b:LW3/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE2/e;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;LW3/e;)LE2/e;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "No acceptable module com.google.android.gms.cronet_dynamite found. Local version is "

    const-string v3, "Selected remote version of com.google.android.gms.cronet_dynamite, version >= "

    const-string v4, "Selected remote version of com.google.android.gms.cronet_dynamite, version >= "

    const-string v5, " and remote module com.google.android.gms.cronet_dynamite:"

    const-string v6, "Considering local module com.google.android.gms.cronet_dynamite:"

    const-string v7, "VersionPolicy returned invalid code:"

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    if-eqz v8, :cond_17

    sget-object v9, LE2/e;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v9}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LE2/i;

    new-instance v11, LE2/i;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v12, LE2/e;->i:LB5/c;

    invoke-virtual {v12}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    move-object/from16 v20, v9

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v9, LE2/e;->j:Lx2/f;

    invoke-virtual {v2, v1, v9}, LW3/e;->u(Landroid/content/Context;LE2/c;)LE2/d;

    move-result-object v9

    const-string v12, "DynamiteModule"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-wide/from16 v18, v14

    :try_start_1
    iget v14, v9, LE2/d;->a:I

    iget v15, v9, LE2/d;->b:I

    move-object/from16 v21, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v9, LE2/d;->c:I

    if-eqz v0, :cond_14

    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    iget v0, v9, LE2/d;->a:I

    if-eqz v0, :cond_14

    move v0, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :cond_0
    :goto_0
    const/4 v6, 0x1

    if-ne v0, v6, :cond_1

    iget v12, v9, LE2/d;->b:I

    if-eqz v12, :cond_14

    :cond_1
    if-ne v0, v5, :cond_2

    const-string v0, "com.google.android.gms.cronet_dynamite"

    const-string v1, "Selected local version of "

    const-string v2, "DynamiteModule"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, LE2/e;

    invoke-direct {v0, v8}, LE2/e;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_a

    :cond_2
    if-ne v0, v6, :cond_13

    :try_start_2
    iget v0, v9, LE2/d;->b:I
    :try_end_2
    .catch LE2/b; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-class v7, LE2/e;

    monitor-enter v7
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch LE2/b; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v1}, LE2/e;->d(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_f

    sget-object v12, LE2/e;->c:Ljava/lang/Boolean;

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v12, :cond_e

    :try_start_5
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v12, 0x2

    if-eqz v7, :cond_8

    const-string v3, "DynamiteModule"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-class v3, LE2/e;

    monitor-enter v3
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch LE2/b; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    sget-object v4, LE2/e;->l:LE2/l;

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v4, :cond_7

    :try_start_7
    invoke-virtual/range {v20 .. v20}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LE2/i;

    if-eqz v3, :cond_6

    iget-object v7, v3, LE2/i;->a:Landroid/database/Cursor;

    if-eqz v7, :cond_6

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v3, v3, LE2/i;->a:Landroid/database/Cursor;

    new-instance v14, LD2/b;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, LD2/b;-><init>(Ljava/lang/Object;)V

    const-class v14, LE2/e;

    monitor-enter v14
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catch LE2/b; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    sget v15, LE2/e;->f:I

    if-lt v15, v12, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    monitor-exit v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v6, :cond_4

    :try_start_9
    const-string v6, "DynamiteModule"

    const-string v12, "Dynamite loader version >= 2, using loadModule2NoCrashUtils"

    invoke-static {v6, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, LD2/b;

    invoke-direct {v6, v7}, LD2/b;-><init>(Ljava/lang/Object;)V

    new-instance v7, LD2/b;

    invoke-direct {v7, v3}, LD2/b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v6, v0, v7}, LE2/l;->f(LD2/b;ILD2/b;)LD2/a;

    move-result-object v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    goto/16 :goto_8

    :cond_4
    const-string v6, "DynamiteModule"

    const-string v12, "Dynamite loader version < 2, falling back to loadModule2"

    invoke-static {v6, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, LD2/b;

    invoke-direct {v6, v7}, LD2/b;-><init>(Ljava/lang/Object;)V

    new-instance v7, LD2/b;

    invoke-direct {v7, v3}, LD2/b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v6, v0, v7}, LE2/l;->e(LD2/b;ILD2/b;)LD2/a;

    move-result-object v0

    :goto_2
    invoke-static {v0}, LD2/b;->f(LD2/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_5

    new-instance v3, LE2/e;

    invoke-direct {v3, v0}, LE2/e;-><init>(Landroid/content/Context;)V

    :goto_3
    move-object v0, v3

    goto/16 :goto_a

    :cond_5
    new-instance v0, LE2/b;

    const-string v3, "Failed to get module context"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1
    .catch LE2/b; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v0

    :cond_6
    new-instance v0, LE2/b;

    const-string v3, "No result cursor"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, LE2/b;

    const-string v3, "DynamiteLoaderV2 was not cached."

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1
    .catch LE2/b; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_3
    move-exception v0

    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v0

    :cond_8
    const-string v4, "DynamiteModule"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, LE2/e;->e(Landroid/content/Context;)LE2/k;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v3}, LG2/a;->b()Landroid/os/Parcel;

    move-result-object v4

    const/4 v6, 0x6

    invoke-virtual {v3, v4, v6}, LG2/a;->a(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    const/4 v4, 0x3

    if-lt v6, v4, :cond_a

    invoke-virtual/range {v20 .. v20}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LE2/i;

    if-eqz v4, :cond_9

    new-instance v6, LD2/b;

    invoke-direct {v6, v1}, LD2/b;-><init>(Ljava/lang/Object;)V

    iget-object v4, v4, LE2/i;->a:Landroid/database/Cursor;

    new-instance v7, LD2/b;

    invoke-direct {v7, v4}, LD2/b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v6, v0, v7}, LE2/k;->f(LD2/b;ILD2/b;)LD2/a;

    move-result-object v0

    goto :goto_4

    :cond_9
    new-instance v0, LE2/b;

    const-string v3, "No cached result cursor holder"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-ne v6, v12, :cond_b

    const-string v4, "DynamiteModule"

    const-string v6, "IDynamite loader version = 2"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, LD2/b;

    invoke-direct {v4, v1}, LD2/b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v0}, LE2/k;->g(LD2/b;I)LD2/a;

    move-result-object v0

    goto :goto_4

    :cond_b
    const-string v4, "DynamiteModule"

    const-string v6, "Dynamite loader version < 2, falling back to createModuleContext"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, LD2/b;

    invoke-direct {v4, v1}, LD2/b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v0}, LE2/k;->e(LD2/b;I)LD2/a;

    move-result-object v0

    :goto_4
    invoke-static {v0}, LD2/b;->f(LD2/a;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v3, LE2/e;

    check-cast v0, Landroid/content/Context;

    invoke-direct {v3, v0}, LE2/e;-><init>(Landroid/content/Context;)V

    goto/16 :goto_3

    :cond_c
    new-instance v0, LE2/b;

    const-string v3, "Failed to load remote module."

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, LE2/b;

    const-string v3, "Failed to create IDynamiteLoader."

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, LE2/b;

    const-string v3, "Failed to determine which loading route to use."

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_1
    .catch LE2/b; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catchall_4
    move-exception v0

    goto :goto_5

    :cond_f
    :try_start_e
    new-instance v0, LE2/b;

    const-string v3, "Remote loading disabled"

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_5
    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    throw v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_1
    .catch LE2/b; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :goto_6
    :try_start_10
    new-instance v3, LE2/b;

    const-string v4, "Failed to load remote module."

    invoke-direct {v3, v4, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_2
    move-exception v0

    goto :goto_9

    :goto_7
    throw v0

    :goto_8
    new-instance v3, LE2/b;

    const-string v4, "Failed to load remote module."

    invoke-direct {v3, v4, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_10
    .catch LE2/b; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :goto_9
    :try_start_11
    const-string v3, "DynamiteModule"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load remote module: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v9, LE2/d;->a:I

    if-eqz v3, :cond_12

    new-instance v4, LE2/j;

    invoke-direct {v4, v3}, LE2/j;-><init>(I)V

    invoke-virtual {v2, v1, v4}, LW3/e;->u(Landroid/content/Context;LE2/c;)LE2/d;

    move-result-object v1

    iget v1, v1, LE2/d;->c:I

    if-ne v1, v5, :cond_12

    const-string v0, "com.google.android.gms.cronet_dynamite"

    const-string v1, "Selected local version of "

    const-string v2, "DynamiteModule"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, LE2/e;

    invoke-direct {v0, v8}, LE2/e;-><init>(Landroid/content/Context;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :goto_a
    cmp-long v1, v18, v16

    if-nez v1, :cond_10

    sget-object v1, LE2/e;->i:LB5/c;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_b

    :cond_10
    sget-object v1, LE2/e;->i:LB5/c;

    invoke-virtual {v1, v13}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_b
    iget-object v1, v11, LE2/i;->a:Landroid/database/Cursor;

    if-eqz v1, :cond_11

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_11
    sget-object v1, LE2/e;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0

    :cond_12
    :try_start_12
    new-instance v1, LE2/b;

    const-string v2, "Remote load failed. No local fallback found."

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_13
    new-instance v1, LE2/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    new-instance v0, LE2/b;

    iget v1, v9, LE2/d;->a:I

    iget v2, v9, LE2/d;->b:I

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v4, v21

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and remote version is "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :catchall_5
    move-exception v0

    move-wide/from16 v18, v14

    :goto_c
    cmp-long v1, v18, v16

    if-nez v1, :cond_15

    sget-object v1, LE2/e;->i:LB5/c;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_d

    :cond_15
    sget-object v1, LE2/e;->i:LB5/c;

    invoke-virtual {v1, v13}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_d
    iget-object v1, v11, LE2/i;->a:Landroid/database/Cursor;

    if-eqz v1, :cond_16

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_16
    sget-object v1, LE2/e;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v10}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v0

    :cond_17
    new-instance v0, LE2/b;

    const-string v1, "null application Context"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;ZZ)I
    .locals 9

    const-string v0, "com.google.android.gms.cronet_dynamite"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object p0, LE2/e;->i:LB5/c;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string p0, "api_force_staging"

    const-string v5, "api"

    const/4 v8, 0x1

    if-eq v8, p1, :cond_0

    move-object p0, v5

    :cond_0
    new-instance p1, Landroid/net/Uri$Builder;

    invoke-direct {p1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "content"

    invoke-virtual {p1, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v5, "com.google.android.gms.chimera"

    invoke-virtual {p1, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p1, "requestStartTime"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p0, :cond_a

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_6

    const-class v2, LE2/e;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x2

    :try_start_2
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, LE2/e;->d:Ljava/lang/String;

    const-string v3, "loaderVersion"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    sput v3, LE2/e;->f:I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_5

    :cond_1
    :goto_0
    const-string v3, "disableStandaloneDynamiteLoader2"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v8

    goto :goto_1

    :cond_2
    move v3, p1

    :goto_1
    sput-boolean v3, LE2/e;->e:Z

    goto :goto_2

    :cond_3
    move v3, p1

    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v2, LE2/e;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LE2/i;

    if-eqz v2, :cond_4

    iget-object v4, v2, LE2/i;->a:Landroid/database/Cursor;

    if-nez v4, :cond_4

    iput-object p0, v2, LE2/i;->a:Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :cond_4
    move v8, p1

    :goto_3
    if-eqz v8, :cond_5

    :goto_4
    move p1, v3

    goto :goto_6

    :cond_5
    move-object v1, p0

    goto :goto_4

    :goto_5
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_8

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_9

    :cond_6
    move-object v1, p0

    :goto_6
    if-eqz p2, :cond_8

    if-nez p1, :cond_7

    goto :goto_7

    :cond_7
    :try_start_6
    new-instance p0, LE2/b;

    const-string p1, "forcing fallback to container DynamiteLoader impl"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    move-object p0, v0

    goto :goto_b

    :catch_1
    move-exception v0

    move-object p0, v0

    goto :goto_a

    :cond_8
    :goto_7
    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    return v0

    :cond_a
    :try_start_7
    const-string p1, "DynamiteModule"

    const-string p2, "Failed to retrieve remote module version."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, LE2/b;

    const-string p2, "Failed to connect to dynamite module ContentResolver."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_8
    move-object v1, p0

    move-object p0, p1

    goto :goto_b

    :goto_9
    move-object v1, p0

    move-object p0, p1

    :goto_a
    :try_start_8
    nop

    instance-of p1, p0, LE2/b;

    if-eqz p1, :cond_b

    throw p0

    :cond_b
    new-instance p1, LE2/b;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V2 version check failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_b
    if-eqz v1, :cond_c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_c
    throw p0
.end method

.method public static c(Ljava/lang/ClassLoader;)V
    .locals 3

    const-string v0, "com.google.android.gms.dynamite.IDynamiteLoaderV2"

    :try_start_0
    const-string v1, "com.google.android.gms.dynamiteloader.DynamiteLoaderV2"

    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, LE2/l;

    if-eqz v2, :cond_1

    check-cast v1, LE2/l;

    goto :goto_0

    :cond_1
    new-instance v1, LE2/l;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, LG2/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    :goto_0
    sput-object v1, LE2/e;->l:LE2/l;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, LE2/b;

    const-string v1, "Failed to instantiate dynamite loader"

    invoke-direct {v0, v1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 6

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    sget-object v1, LE2/e;->g:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    sget-object v0, LE2/e;->g:Ljava/lang/Boolean;

    const-string v1, "DynamiteModule"

    const/4 v3, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "com.google.android.gms.chimera"

    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    sget-object v4, Lu2/f;->b:Lu2/f;

    const v5, 0x989680

    invoke-virtual {v4, p0, v5}, Lu2/f;->b(Landroid/content/Context;I)I

    move-result p0

    if-nez p0, :cond_2

    if-eqz v0, :cond_2

    const-string p0, "com.google.android.gms"

    iget-object v4, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v3, v2

    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, LE2/e;->g:Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    iget-object p0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_3

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 p0, p0, 0x81

    if-nez p0, :cond_3

    const-string p0, "Non-system-image GmsCore APK, forcing V1"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v2, LE2/e;->e:Z

    :cond_3
    if-nez v3, :cond_4

    const-string p0, "Invalid GmsCore APK, remote loading disabled."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v3
.end method

.method public static e(Landroid/content/Context;)LE2/k;
    .locals 6

    const-string v0, "Failed to load IDynamiteLoader from GmsCore: "

    const-class v1, LE2/e;

    monitor-enter v1

    :try_start_0
    sget-object v2, LE2/e;->k:LE2/k;

    if-eqz v2, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    const-string v3, "com.google.android.gms"

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string v3, "com.google.android.gms.chimera.container.DynamiteLoaderImpl"

    invoke-virtual {p0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;

    if-nez p0, :cond_1

    move-object v3, v2

    goto :goto_0

    :cond_1
    const-string v3, "com.google.android.gms.dynamite.IDynamiteLoader"

    invoke-interface {p0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v3

    instance-of v4, v3, LE2/k;

    if-eqz v4, :cond_2

    check-cast v3, LE2/k;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    new-instance v3, LE2/k;

    const-string v4, "com.google.android.gms.dynamite.IDynamiteLoader"

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5}, LG2/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    :goto_0
    if-eqz v3, :cond_3

    sput-object v3, LE2/e;->k:LE2/k;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    return-object v3

    :goto_1
    const-string v3, "DynamiteModule"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit v1

    return-object v2

    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
