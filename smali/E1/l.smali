.class public final synthetic LE1/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LE1/b;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LE1/b;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, LE1/l;->a:I

    iput-object p1, p0, LE1/l;->b:LE1/b;

    iput-object p2, p0, LE1/l;->c:Ljava/lang/Object;

    iput-object p3, p0, LE1/l;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 23

    move-object/from16 v1, p0

    iget v0, v1, LE1/l;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v2, v1, LE1/l;->b:LE1/b;

    iget-object v0, v1, LE1/l;->c:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lib/player/base/helper/a;

    iget-object v0, v1, LE1/l;->d:Ljava/lang/Object;

    check-cast v0, LE1/a;

    const/16 v4, 0x1c

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, v2, LE1/b;->a:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v7, v2, LE1/b;->h:Lcom/google/android/gms/internal/play_billing/d;

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_0

    :try_start_2
    sget-object v0, LE1/B;->k:LE1/f;

    const/16 v6, 0x77

    invoke-virtual {v2, v3, v0, v6, v5}, LE1/b;->r(Lib/player/base/helper/a;LE1/f;ILjava/lang/Exception;)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v6, v2, LE1/b;->f:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v0, v0, LE1/a;->q:Ljava/lang/String;

    iget-object v8, v2, LE1/b;->c:Ljava/lang/String;

    iget-object v9, v2, LE1/b;->y:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    invoke-static {v11, v8, v9, v10}, Lcom/google/android/gms/internal/play_billing/o0;->b(Landroid/os/Bundle;Ljava/lang/String;J)V

    check-cast v7, Lcom/google/android/gms/internal/play_billing/b;

    invoke-virtual {v7, v6, v0, v11}, Lcom/google/android/gms/internal/play_billing/b;->f(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "BillingClient"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/o0;->a(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v2

    const-string v4, "BillingClient"

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/play_billing/o0;->d(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, LE1/B;->a(ILjava/lang/String;)LE1/f;

    move-result-object v0

    invoke-virtual {v3, v0}, Lib/player/base/helper/a;->a(LE1/f;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_0
    sget-object v6, LE1/B;->i:LE1/f;

    invoke-virtual {v2, v3, v6, v4, v0}, LE1/b;->r(Lib/player/base/helper/a;LE1/f;ILjava/lang/Exception;)V

    goto :goto_2

    :goto_1
    sget-object v6, LE1/B;->k:LE1/f;

    invoke-virtual {v2, v3, v6, v4, v0}, LE1/b;->r(Lib/player/base/helper/a;LE1/f;ILjava/lang/Exception;)V

    :goto_2
    return-object v5

    :pswitch_0
    iget-object v0, v1, LE1/l;->b:LE1/b;

    iget-object v2, v1, LE1/l;->c:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v1, LE1/l;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x5

    :try_start_5
    iget-object v5, v0, LE1/b;->a:Ljava/lang/Object;

    monitor-enter v5
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    iget-object v6, v0, LE1/b;->h:Lcom/google/android/gms/internal/play_billing/d;

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v6, :cond_1

    :try_start_7
    sget-object v0, LE1/B;->k:LE1/f;

    const/16 v2, 0x77

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/o0;->h(LE1/f;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_5

    :cond_1
    iget-object v0, v0, LE1/b;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    check-cast v6, Lcom/google/android/gms/internal/play_billing/b;

    invoke-virtual {v6, v0, v2, v3}, Lcom/google/android/gms/internal/play_billing/b;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_7
    .catch Landroid/os/DeadObjectException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_6

    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catch Landroid/os/DeadObjectException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    :goto_3
    sget-object v2, LE1/B;->i:LE1/f;

    invoke-static {v0}, LE1/z;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/play_billing/o0;->h(LE1/f;I)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v0, :cond_2

    const-string v3, "ADDITIONAL_LOG_DETAILS"

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_4
    move-object v0, v2

    goto :goto_6

    :goto_5
    sget-object v2, LE1/B;->k:LE1/f;

    invoke-static {v0}, LE1/z;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/play_billing/o0;->h(LE1/f;I)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v0, :cond_2

    const-string v3, "ADDITIONAL_LOG_DETAILS"

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :goto_6
    return-object v0

    :pswitch_1
    iget-object v2, v1, LE1/l;->b:LE1/b;

    iget-object v0, v1, LE1/l;->c:Ljava/lang/Object;

    check-cast v0, LE1/i;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, LE1/i;->a:Lcom/google/android/gms/internal/play_billing/C;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LE1/j;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "inapp"

    iget-object v0, v0, LE1/i;->a:Lcom/google/android/gms/internal/play_billing/C;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_7
    const/4 v12, 0x0

    if-ge v5, v4, :cond_10

    add-int/lit8 v13, v5, 0x14

    if-le v13, v4, :cond_3

    move v6, v4

    goto :goto_8

    :cond_3
    move v6, v13

    :goto_8
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v0, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v9, 0x0

    :goto_9
    if-ge v9, v6, :cond_4

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, LE1/j;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "lifetime_subscription"

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_4
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v6, "ITEM_ID_LIST"

    invoke-virtual {v9, v6, v5}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v5, v2, LE1/b;->c:Ljava/lang/String;

    const-string v6, "playBillingLibraryVersion"

    invoke-virtual {v9, v6, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_a
    iget-object v5, v2, LE1/b;->a:Ljava/lang/Object;

    monitor-enter v5
    :try_end_a
    .catch Landroid/os/DeadObjectException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :try_start_b
    iget-object v6, v2, LE1/b;->h:Lcom/google/android/gms/internal/play_billing/d;

    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-nez v6, :cond_5

    :try_start_c
    sget-object v0, LE1/B;->k:LE1/f;

    const-string v3, "Service has been reset to null."

    const/16 v4, 0x77

    invoke-virtual {v2, v0, v4, v3, v12}, LE1/b;->p(LE1/f;ILjava/lang/String;Ljava/lang/Exception;)LA/d;

    move-result-object v0

    goto/16 :goto_f

    :catch_4
    move-exception v0

    goto/16 :goto_d

    :catch_5
    move-exception v0

    const/16 v5, 0x2b

    goto/16 :goto_e

    :cond_5
    iget-boolean v5, v2, LE1/b;->s:Z

    const/4 v10, 0x1

    if-eq v10, v5, :cond_6

    const/16 v5, 0x11

    goto :goto_a

    :cond_6
    const/16 v5, 0x14

    :goto_a
    iget-object v15, v2, LE1/b;->f:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    iget-boolean v11, v2, LE1/b;->r:Z

    if-eqz v11, :cond_7

    iget-object v11, v2, LE1/b;->u:Lu2/j;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_7
    iget-object v11, v2, LE1/b;->c:Ljava/lang/String;

    invoke-virtual {v2}, LE1/b;->i()V

    invoke-virtual {v2}, LE1/b;->i()V

    invoke-virtual {v2}, LE1/b;->i()V

    invoke-virtual {v2}, LE1/b;->i()V

    iget-object v14, v2, LE1/b;->y:Ljava/lang/Long;

    move/from16 v17, v13

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    invoke-static {v14, v11, v12, v13}, Lcom/google/android/gms/internal/play_billing/o0;->b(Landroid/os/Bundle;Ljava/lang/String;J)V

    const-string v11, "enablePendingPurchases"

    invoke-virtual {v14, v11, v10}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v11, "SKU_DETAILS_RESPONSE_FORMAT"

    const-string v12, "PRODUCT_DETAILS"

    invoke-virtual {v14, v11, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    move/from16 v18, v10

    const/4 v10, 0x0

    const/16 v19, 0x0

    :goto_b
    if-ge v10, v13, :cond_8

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, LE1/j;

    move/from16 v21, v4

    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    xor-int/lit8 v4, v22, 0x1

    or-int v19, v19, v4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v10, v10, 0x1

    move/from16 v4, v21

    goto :goto_b

    :cond_8
    move/from16 v21, v4

    if-eqz v19, :cond_9

    const-string v4, "SKU_OFFER_ID_TOKEN_LIST"

    invoke-virtual {v14, v4, v11}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_9
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "SKU_SERIALIZED_DOCID_LIST"

    invoke-virtual {v14, v4, v12}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_a
    check-cast v6, Lcom/google/android/gms/internal/play_billing/b;

    move-object v7, v6

    move v6, v5

    move-object v5, v7

    move-object v10, v14

    move-object v7, v15

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/play_billing/b;->k(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4
    :try_end_c
    .catch Landroid/os/DeadObjectException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    if-nez v4, :cond_b

    const-string v0, "queryProductDetailsAsync got empty product details response."

    sget-object v3, LE1/B;->q:LE1/f;

    const/16 v4, 0x2c

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v0, v5}, LE1/b;->p(LE1/f;ILjava/lang/String;Ljava/lang/Exception;)LA/d;

    move-result-object v0

    goto/16 :goto_f

    :cond_b
    const-string v5, "DETAILS_LIST"

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x6

    if-nez v5, :cond_d

    const-string v0, "BillingClient"

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/play_billing/o0;->a(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    const-string v3, "BillingClient"

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/o0;->d(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_c

    invoke-static {v0, v3}, LE1/B;->a(ILjava/lang/String;)LE1/f;

    move-result-object v3

    const-string v4, "getSkuDetails() failed for queryProductDetailsAsync. Response code: "

    invoke-static {v0, v4}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x17

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v0, v5}, LE1/b;->p(LE1/f;ILjava/lang/String;Ljava/lang/Exception;)LA/d;

    move-result-object v0

    goto/16 :goto_f

    :cond_c
    const/4 v5, 0x0

    invoke-static {v6, v3}, LE1/B;->a(ILjava/lang/String;)LE1/f;

    move-result-object v0

    const/16 v3, 0x2d

    const-string v4, "getSkuDetails() returned a bundle with neither an error nor a product detail list for queryProductDetailsAsync."

    invoke-virtual {v2, v0, v3, v4, v5}, LE1/b;->p(LE1/f;ILjava/lang/String;Ljava/lang/Exception;)LA/d;

    move-result-object v0

    goto/16 :goto_f

    :cond_d
    const-string v5, "DETAILS_LIST"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_f

    const/4 v5, 0x0

    :goto_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_e

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :try_start_d
    new-instance v9, LE1/h;

    invoke-direct {v9, v7}, LE1/h;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_6

    invoke-virtual {v9}, LE1/h;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "Got product details: "

    invoke-virtual {v10, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v10, "BillingClient"

    invoke-static {v10, v7}, Lcom/google/android/gms/internal/play_billing/o0;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :catch_6
    move-exception v0

    const-string v3, "Error trying to decode SkuDetails."

    invoke-static {v6, v3}, LE1/B;->a(ILjava/lang/String;)LE1/f;

    move-result-object v3

    const/16 v4, 0x2f

    const-string v5, "Got a JSON exception trying to decode ProductDetails. \n Exception: "

    invoke-virtual {v2, v3, v4, v5, v0}, LE1/b;->p(LE1/f;ILjava/lang/String;Ljava/lang/Exception;)LA/d;

    move-result-object v0

    goto :goto_f

    :cond_e
    move/from16 v5, v17

    move/from16 v4, v21

    goto/16 :goto_7

    :cond_f
    const-string v0, "queryProductDetailsAsync got null response list"

    sget-object v3, LE1/B;->q:LE1/f;

    const/16 v4, 0x2e

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v0, v5}, LE1/b;->p(LE1/f;ILjava/lang/String;Ljava/lang/Exception;)LA/d;

    move-result-object v0

    goto :goto_f

    :catchall_2
    move-exception v0

    :try_start_e
    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :try_start_f
    throw v0
    :try_end_f
    .catch Landroid/os/DeadObjectException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    :goto_d
    const-string v3, "queryProductDetailsAsync got a remote exception (try to reconnect)."

    sget-object v4, LE1/B;->i:LE1/f;

    const/16 v5, 0x2b

    invoke-virtual {v2, v4, v5, v3, v0}, LE1/b;->p(LE1/f;ILjava/lang/String;Ljava/lang/Exception;)LA/d;

    move-result-object v0

    goto :goto_f

    :goto_e
    const-string v3, "queryProductDetailsAsync got a remote exception (try to reconnect)."

    sget-object v4, LE1/B;->k:LE1/f;

    invoke-virtual {v2, v4, v5, v3, v0}, LE1/b;->p(LE1/f;ILjava/lang/String;Ljava/lang/Exception;)LA/d;

    move-result-object v0

    goto :goto_f

    :cond_10
    const-string v0, ""

    new-instance v2, LA/d;

    const/4 v4, 0x0

    invoke-direct {v2, v4, v0, v3}, LA/d;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V

    move-object v0, v2

    :goto_f
    iget v2, v0, LA/d;->q:I

    iget-object v3, v0, LA/d;->s:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, LE1/B;->a(ILjava/lang/String;)LE1/f;

    move-result-object v2

    iget-object v0, v0, LA/d;->r:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v3, v1, LE1/l;->d:Ljava/lang/Object;

    check-cast v3, Lib/player/base/helper/a;

    invoke-virtual {v3, v2, v0}, Lib/player/base/helper/a;->b(LE1/f;Ljava/util/ArrayList;)V

    const/16 v16, 0x0

    return-object v16

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
