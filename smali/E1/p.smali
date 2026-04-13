.class public final synthetic LE1/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LE1/p;->a:I

    iput-object p2, p0, LE1/p;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    iget v0, v1, LE1/p;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, LE1/p;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, LF1/c;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, LE1/p;->b:Ljava/lang/Object;

    check-cast v0, LF1/c;

    iget-object v3, v0, LF1/c;->x:Ljava/io/BufferedWriter;

    if-nez v3, :cond_0

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, LF1/c;->E()V

    iget-object v0, v1, LE1/p;->b:Ljava/lang/Object;

    check-cast v0, LF1/c;

    invoke-virtual {v0}, LF1/c;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, LE1/p;->b:Ljava/lang/Object;

    check-cast v0, LF1/c;

    invoke-virtual {v0}, LF1/c;->C()V

    iget-object v0, v1, LE1/p;->b:Ljava/lang/Object;

    check-cast v0, LF1/c;

    const/4 v3, 0x0

    iput v3, v0, LF1/c;->z:I

    :cond_1
    monitor-exit v2

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_0
    iget-object v0, v1, LE1/p;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, LE1/q;

    iget-object v0, v2, LE1/q;->b:LE1/b;

    iget-object v3, v0, LE1/b;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v0, v2, LE1/q;->b:LE1/b;

    iget v0, v0, LE1/b;->b:I

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v0, v4, :cond_2

    monitor-exit v3

    :goto_2
    move-object/from16 v16, v5

    goto/16 :goto_24

    :catchall_1
    move-exception v0

    goto/16 :goto_25

    :cond_2
    iget-object v0, v2, LE1/q;->b:LE1/b;

    iget v6, v0, LE1/b;->b:I

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "accountName"

    invoke-virtual {v0, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v2, LE1/q;->b:LE1/b;

    iget-object v7, v3, LE1/b;->c:Ljava/lang/String;

    iget-object v3, v3, LE1/b;->y:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v0, v7, v8, v9}, Lcom/google/android/gms/internal/play_billing/o0;->b(Landroid/os/Bundle;Ljava/lang/String;J)V

    goto :goto_3

    :cond_3
    move-object v0, v5

    :goto_3
    const/4 v3, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_2
    iget-object v9, v2, LE1/q;->b:LE1/b;

    iget-object v9, v9, LE1/b;->a:Ljava/lang/Object;

    monitor-enter v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v10, v2, LE1/q;->b:LE1/b;

    iget-object v10, v10, LE1/b;->h:Lcom/google/android/gms/internal/play_billing/d;

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-nez v10, :cond_4

    :try_start_4
    iget-object v0, v2, LE1/q;->b:LE1/b;

    invoke-virtual {v0, v7}, LE1/b;->n(I)V

    iget-object v0, v2, LE1/q;->b:LE1/b;

    sget-object v4, LE1/B;->k:LE1/f;

    const/16 v9, 0x77

    invoke-virtual {v0, v9, v3, v4}, LE1/b;->u(IILE1/f;)V

    invoke-virtual {v2, v4}, LE1/q;->a(LE1/f;)V

    goto :goto_2

    :catch_0
    move-exception v0

    move-object/from16 v16, v5

    goto/16 :goto_1a

    :cond_4
    iget-object v9, v2, LE1/q;->b:LE1/b;

    iget-object v9, v9, LE1/b;->f:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/16 v11, 0x17

    move v13, v4

    move v12, v11

    :goto_4
    if-lt v12, v4, :cond_7

    if-nez v0, :cond_5

    const-string v13, "subs"

    move-object v14, v10

    check-cast v14, Lcom/google/android/gms/internal/play_billing/b;

    invoke-virtual {v14}, LG2/a;->c()Landroid/os/Parcel;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v15, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v14, v15, v8}, LG2/a;->d(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    move v13, v14

    goto :goto_5

    :cond_5
    const-string v13, "subs"

    move-object v14, v10

    check-cast v14, Lcom/google/android/gms/internal/play_billing/b;

    invoke-virtual {v14, v12, v9, v13, v0}, Lcom/google/android/gms/internal/play_billing/b;->e(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v13

    :goto_5
    if-nez v13, :cond_6

    const-string v14, "BillingClient"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 v16, v5

    :try_start_5
    const-string v5, "highestLevelSupportedForSubs: "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Lcom/google/android/gms/internal/play_billing/o0;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_1
    move-exception v0

    goto/16 :goto_1a

    :cond_6
    move-object/from16 v16, v5

    add-int/lit8 v12, v12, -0x1

    goto :goto_4

    :cond_7
    move-object/from16 v16, v5

    move v12, v7

    :goto_6
    iget-object v5, v2, LE1/q;->b:LE1/b;

    if-lt v12, v4, :cond_8

    move v14, v8

    goto :goto_7

    :cond_8
    move v14, v7

    :goto_7
    iput-boolean v14, v5, LE1/b;->j:Z

    const/16 v5, 0x9

    if-ge v12, v4, :cond_9

    const-string v12, "BillingClient"

    const-string v14, "In-app billing API does not support subscription on this device."

    invoke-static {v12, v14}, Lcom/google/android/gms/internal/play_billing/o0;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v12, v5

    goto :goto_8

    :cond_9
    move v12, v8

    :goto_8
    if-lt v11, v4, :cond_c

    if-nez v0, :cond_a

    const-string v13, "inapp"

    move-object v14, v10

    check-cast v14, Lcom/google/android/gms/internal/play_billing/b;

    invoke-virtual {v14}, LG2/a;->c()Landroid/os/Parcel;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v15, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v14, v15, v8}, LG2/a;->d(Landroid/os/Parcel;I)Landroid/os/Parcel;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    move v13, v14

    goto :goto_9

    :cond_a
    const-string v13, "inapp"

    move-object v14, v10

    check-cast v14, Lcom/google/android/gms/internal/play_billing/b;

    invoke-virtual {v14, v11, v9, v13, v0}, Lcom/google/android/gms/internal/play_billing/b;->e(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v13

    :goto_9
    if-nez v13, :cond_b

    iget-object v0, v2, LE1/q;->b:LE1/b;

    iput v11, v0, LE1/b;->k:I

    const-string v0, "BillingClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mHighestLevelSupportedForInApp: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/google/android/gms/internal/play_billing/o0;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_b
    add-int/lit8 v11, v11, -0x1

    goto :goto_8

    :cond_c
    :goto_a
    iget-object v0, v2, LE1/q;->b:LE1/b;

    iget v9, v0, LE1/b;->k:I

    const/16 v10, 0x15

    if-lt v9, v10, :cond_d

    move v10, v8

    goto :goto_b

    :cond_d
    move v10, v7

    :goto_b
    iput-boolean v10, v0, LE1/b;->t:Z

    const/16 v10, 0x14

    if-lt v9, v10, :cond_e

    move v10, v8

    goto :goto_c

    :cond_e
    move v10, v7

    :goto_c
    iput-boolean v10, v0, LE1/b;->s:Z

    const/16 v10, 0x13

    if-lt v9, v10, :cond_f

    move v10, v8

    goto :goto_d

    :cond_f
    move v10, v7

    :goto_d
    iput-boolean v10, v0, LE1/b;->r:Z

    const/16 v10, 0x11

    if-lt v9, v10, :cond_10

    move v10, v8

    goto :goto_e

    :cond_10
    move v10, v7

    :goto_e
    iput-boolean v10, v0, LE1/b;->q:Z

    const/16 v10, 0x10

    if-lt v9, v10, :cond_11

    move v10, v8

    goto :goto_f

    :cond_11
    move v10, v7

    :goto_f
    iput-boolean v10, v0, LE1/b;->p:Z

    const/16 v10, 0xf

    if-lt v9, v10, :cond_12

    move v10, v8

    goto :goto_10

    :cond_12
    move v10, v7

    :goto_10
    iput-boolean v10, v0, LE1/b;->o:Z

    const/16 v10, 0xe

    if-lt v9, v10, :cond_13

    move v10, v8

    goto :goto_11

    :cond_13
    move v10, v7

    :goto_11
    iput-boolean v10, v0, LE1/b;->n:Z

    if-lt v9, v5, :cond_14

    move v5, v8

    goto :goto_12

    :cond_14
    move v5, v7

    :goto_12
    iput-boolean v5, v0, LE1/b;->m:Z

    if-lt v9, v3, :cond_15

    move v5, v8

    goto :goto_13

    :cond_15
    move v5, v7

    :goto_13
    iput-boolean v5, v0, LE1/b;->l:Z

    if-ge v9, v4, :cond_16

    const-string v0, "BillingClient"

    const-string v5, "In-app billing API version 3 is not supported on this device."

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0x24

    :cond_16
    if-nez v13, :cond_1b

    iget-object v0, v2, LE1/q;->b:LE1/b;

    iget-object v5, v0, LE1/b;->a:Ljava/lang/Object;

    monitor-enter v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    iget-object v0, v2, LE1/q;->b:LE1/b;

    iget v0, v0, LE1/b;->b:I

    if-ne v0, v4, :cond_17

    monitor-exit v5

    goto/16 :goto_24

    :catchall_2
    move-exception v0

    goto :goto_17

    :cond_17
    if-ne v6, v8, :cond_18

    move v0, v7

    goto :goto_14

    :cond_18
    move v0, v8

    :goto_14
    iget-object v4, v2, LE1/q;->b:LE1/b;

    const/4 v9, 0x2

    invoke-virtual {v4, v9}, LE1/b;->n(I)V

    iget-object v4, v2, LE1/q;->b:LE1/b;

    iget-object v4, v4, LE1/b;->e:LE1/E;

    if-eqz v4, :cond_19

    iget-object v4, v2, LE1/q;->b:LE1/b;

    iget-object v4, v4, LE1/b;->e:LE1/E;

    goto :goto_15

    :cond_19
    move-object/from16 v4, v16

    :goto_15
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v4, :cond_1a

    :try_start_7
    iget-object v5, v2, LE1/q;->b:LE1/b;

    iget-boolean v5, v5, LE1/b;->t:Z

    invoke-virtual {v4, v5}, LE1/E;->e(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :cond_1a
    :goto_16
    move-object/from16 v4, v16

    goto :goto_1f

    :goto_17
    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0

    :cond_1b
    if-ne v6, v8, :cond_1c

    move v0, v7

    goto :goto_18

    :cond_1c
    move v0, v8

    :goto_18
    iget-object v4, v2, LE1/q;->b:LE1/b;

    invoke-virtual {v4, v7}, LE1/b;->n(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_16

    :catchall_3
    move-exception v0

    move-object/from16 v16, v5

    :goto_19
    :try_start_a
    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    :catchall_4
    move-exception v0

    goto :goto_19

    :goto_1a
    if-ne v6, v8, :cond_1d

    move v4, v7

    goto :goto_1b

    :cond_1d
    move v4, v8

    :goto_1b
    const-string v5, "BillingClient"

    const-string v6, "Exception while checking if billing is supported; try to reconnect"

    invoke-static {v5, v6, v0}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    instance-of v5, v0, Landroid/os/DeadObjectException;

    const/16 v6, 0x2a

    if-eqz v5, :cond_1e

    const/16 v5, 0x65

    :goto_1c
    move v12, v5

    goto :goto_1d

    :cond_1e
    instance-of v5, v0, Landroid/os/RemoteException;

    if-eqz v5, :cond_1f

    const/16 v5, 0x64

    goto :goto_1c

    :cond_1f
    instance-of v5, v0, Ljava/lang/SecurityException;

    if-eqz v5, :cond_20

    const/16 v5, 0x66

    goto :goto_1c

    :cond_20
    move v12, v6

    :goto_1d
    if-ne v12, v6, :cond_21

    invoke-static {v0}, LE1/z;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1e

    :cond_21
    move-object/from16 v0, v16

    :goto_1e
    iget-object v5, v2, LE1/q;->b:LE1/b;

    invoke-virtual {v5, v7}, LE1/b;->n(I)V

    move v13, v4

    move-object v4, v0

    move v0, v13

    move v13, v3

    :goto_1f
    if-nez v13, :cond_23

    if-eq v8, v0, :cond_22

    :try_start_c
    iget-object v0, v2, LE1/q;->b:LE1/b;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :try_start_d
    invoke-static {v3}, LE1/z;->d(I)Lcom/google/android/gms/internal/play_billing/S1;

    move-result-object v3

    invoke-virtual {v0, v3}, LE1/b;->m(Lcom/google/android/gms/internal/play_billing/S1;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_21

    :catchall_5
    move-exception v0

    :try_start_e
    const-string v3, "BillingClient"

    const-string v4, "Unable to log."

    invoke-static {v3, v4, v0}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21

    :catchall_6
    move-exception v0

    goto :goto_20

    :cond_22
    iget-object v0, v2, LE1/q;->b:LE1/b;

    iget-object v0, v0, LE1/b;->g:LA/j;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/k2;->o()Lcom/google/android/gms/internal/play_billing/j2;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/U1;->r()Lcom/google/android/gms/internal/play_billing/T1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/f1;->d()V

    iget-object v5, v4, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    check-cast v5, Lcom/google/android/gms/internal/play_billing/U1;

    invoke-static {v5, v7}, Lcom/google/android/gms/internal/play_billing/U1;->p(Lcom/google/android/gms/internal/play_billing/U1;I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/f1;->d()V

    iget-object v5, v3, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    check-cast v5, Lcom/google/android/gms/internal/play_billing/k2;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/f1;->b()Lcom/google/android/gms/internal/play_billing/g1;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/play_billing/U1;

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/play_billing/k2;->n(Lcom/google/android/gms/internal/play_billing/k2;Lcom/google/android/gms/internal/play_billing/U1;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/f1;->b()Lcom/google/android/gms/internal/play_billing/g1;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/play_billing/k2;

    invoke-virtual {v0, v3}, LA/j;->E(Lcom/google/android/gms/internal/play_billing/k2;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_21

    :goto_20
    const-string v3, "BillingClient"

    const-string v4, "Unable to log."

    invoke-static {v3, v4, v0}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_21
    sget-object v0, LE1/B;->j:LE1/f;

    invoke-virtual {v2, v0}, LE1/q;->a(LE1/f;)V

    goto :goto_24

    :cond_23
    sget-object v5, LE1/B;->a:LE1/f;

    if-eq v8, v0, :cond_24

    :try_start_f
    iget-object v0, v2, LE1/q;->b:LE1/b;

    invoke-virtual {v0, v12, v3, v5, v4}, LE1/b;->v(IILE1/f;Ljava/lang/String;)V

    goto :goto_23

    :catchall_7
    move-exception v0

    goto :goto_22

    :cond_24
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/U1;->r()Lcom/google/android/gms/internal/play_billing/T1;

    move-result-object v0

    iget v3, v5, LE1/f;->a:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/f1;->d()V

    iget-object v6, v0, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    check-cast v6, Lcom/google/android/gms/internal/play_billing/U1;

    invoke-static {v6, v3}, Lcom/google/android/gms/internal/play_billing/U1;->p(Lcom/google/android/gms/internal/play_billing/U1;I)V

    iget-object v3, v5, LE1/f;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/f1;->d()V

    iget-object v5, v0, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    check-cast v5, Lcom/google/android/gms/internal/play_billing/U1;

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/play_billing/U1;->o(Lcom/google/android/gms/internal/play_billing/U1;Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/play_billing/T1;->e(I)V

    if-eqz v4, :cond_25

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/f1;->d()V

    iget-object v3, v0, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    check-cast v3, Lcom/google/android/gms/internal/play_billing/U1;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/U1;->n(Lcom/google/android/gms/internal/play_billing/U1;Ljava/lang/String;)V

    :cond_25
    iget-object v3, v2, LE1/q;->b:LE1/b;

    iget-object v3, v3, LE1/b;->g:LA/j;

    invoke-static {}, Lcom/google/android/gms/internal/play_billing/k2;->o()Lcom/google/android/gms/internal/play_billing/j2;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/f1;->b()Lcom/google/android/gms/internal/play_billing/g1;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/U1;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/f1;->d()V

    iget-object v5, v4, Lcom/google/android/gms/internal/play_billing/f1;->q:Lcom/google/android/gms/internal/play_billing/g1;

    check-cast v5, Lcom/google/android/gms/internal/play_billing/k2;

    invoke-static {v5, v0}, Lcom/google/android/gms/internal/play_billing/k2;->n(Lcom/google/android/gms/internal/play_billing/k2;Lcom/google/android/gms/internal/play_billing/U1;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/play_billing/f1;->b()Lcom/google/android/gms/internal/play_billing/g1;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/play_billing/k2;

    invoke-virtual {v3, v0}, LA/j;->E(Lcom/google/android/gms/internal/play_billing/k2;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto :goto_23

    :goto_22
    const-string v3, "BillingClient"

    const-string v4, "Unable to log."

    invoke-static {v3, v4, v0}, Lcom/google/android/gms/internal/play_billing/o0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_23
    sget-object v0, LE1/B;->a:LE1/f;

    invoke-virtual {v2, v0}, LE1/q;->a(LE1/f;)V

    :goto_24
    return-object v16

    :goto_25
    :try_start_10
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
