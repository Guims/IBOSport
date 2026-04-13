.class public final LE1/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lib/player/base/helper/a;

.field public final synthetic b:LE1/b;


# direct methods
.method public constructor <init>(LE1/b;Lib/player/base/helper/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LE1/o;->a:Lib/player/base/helper/a;

    iput-object p1, p0, LE1/o;->b:LE1/b;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    iget-object v2, v1, LE1/o;->b:LE1/b;

    const-string v0, "inapp"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "Querying owned items, item type: "

    const-string v4, "BillingClient"

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/play_billing/o0;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v3, v2, LE1/b;->m:Z

    iget-object v4, v2, LE1/b;->u:Lu2/j;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v2, LE1/b;->u:Lu2/j;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v2, LE1/b;->y:Ljava/lang/Long;

    iget-object v5, v2, LE1/b;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-static {v4, v5, v6, v7}, Lcom/google/android/gms/internal/play_billing/o0;->b(Landroid/os/Bundle;Ljava/lang/String;J)V

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    const-string v3, "enablePendingPurchases"

    invoke-virtual {v4, v3, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    const/4 v3, 0x0

    move-object v6, v3

    :goto_0
    const/16 v7, 0x34

    :try_start_0
    iget-object v8, v2, LE1/b;->a:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v9, v2, LE1/b;->h:Lcom/google/android/gms/internal/play_billing/d;

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_1

    :try_start_2
    sget-object v0, LE1/B;->k:LE1/f;

    const-string v4, "Service has been reset to null"

    const/16 v5, 0x77

    invoke-virtual {v2, v0, v5, v4, v3}, LE1/b;->q(LE1/f;ILjava/lang/String;Ljava/lang/Exception;)LA/j;

    move-result-object v0

    :goto_1
    move-object/from16 v16, v3

    goto/16 :goto_a

    :catch_0
    move-exception v0

    move-object/from16 v16, v3

    goto/16 :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v16, v3

    goto/16 :goto_9

    :cond_1
    iget-boolean v8, v2, LE1/b;->m:Z

    if-eqz v8, :cond_3

    iget-boolean v8, v2, LE1/b;->r:Z

    if-eq v5, v8, :cond_2

    const/16 v8, 0x9

    goto :goto_2

    :cond_2
    const/16 v8, 0x13

    :goto_2
    iget-object v11, v2, LE1/b;->f:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    check-cast v9, Lcom/google/android/gms/internal/play_billing/b;

    invoke-virtual {v9, v8, v11, v6, v4}, Lcom/google/android/gms/internal/play_billing/b;->j(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    goto :goto_3

    :cond_3
    iget-object v8, v2, LE1/b;->f:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    check-cast v9, Lcom/google/android/gms/internal/play_billing/b;

    invoke-virtual {v9, v8, v6}, Lcom/google/android/gms/internal/play_billing/b;->i(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    const-string v7, "INAPP_DATA_SIGNATURE_LIST"

    const-string v8, "INAPP_PURCHASE_DATA_LIST"

    const-string v9, "INAPP_PURCHASE_ITEM_LIST"

    sget-object v11, LE1/B;->i:LE1/f;

    const-string v12, "BillingClient"

    const/4 v13, 0x4

    if-nez v6, :cond_4

    const-string v7, "getPurchase() got null owned items list"

    invoke-static {v12, v7}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, LE1/t;

    const/16 v8, 0x36

    invoke-direct {v7, v8, v13, v11}, LE1/t;-><init>(IILjava/lang/Object;)V

    goto/16 :goto_5

    :cond_4
    invoke-static {v12, v6}, Lcom/google/android/gms/internal/play_billing/o0;->a(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v14

    invoke-static {v12, v6}, Lcom/google/android/gms/internal/play_billing/o0;->d(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v15

    invoke-static {}, LE1/f;->a()LE1/e;

    move-result-object v10

    iput v14, v10, LE1/e;->a:I

    iput-object v15, v10, LE1/e;->b:Ljava/lang/String;

    invoke-virtual {v10}, LE1/e;->a()LE1/f;

    move-result-object v10

    if-eqz v14, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getPurchase() failed. Response code: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, LE1/t;

    const/16 v8, 0x17

    invoke-direct {v7, v8, v13, v10}, LE1/t;-><init>(IILjava/lang/Object;)V

    goto :goto_5

    :cond_5
    invoke-virtual {v6, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual {v6, v8}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual {v6, v7}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    if-nez v9, :cond_7

    const-string v7, "Bundle returned from getPurchase() contains null SKUs list."

    invoke-static {v12, v7}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, LE1/t;

    const/16 v8, 0x38

    invoke-direct {v7, v8, v13, v11}, LE1/t;-><init>(IILjava/lang/Object;)V

    goto :goto_5

    :cond_7
    if-nez v8, :cond_8

    const-string v7, "Bundle returned from getPurchase() contains null purchases list."

    invoke-static {v12, v7}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, LE1/t;

    const/16 v8, 0x39

    invoke-direct {v7, v8, v13, v11}, LE1/t;-><init>(IILjava/lang/Object;)V

    goto :goto_5

    :cond_8
    if-nez v7, :cond_9

    const-string v7, "Bundle returned from getPurchase() contains null signatures list."

    invoke-static {v12, v7}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, LE1/t;

    const/16 v8, 0x3a

    invoke-direct {v7, v8, v13, v11}, LE1/t;-><init>(IILjava/lang/Object;)V

    goto :goto_5

    :cond_9
    new-instance v7, LE1/t;

    sget-object v8, LE1/B;->j:LE1/f;

    invoke-direct {v7, v5, v13, v8}, LE1/t;-><init>(IILjava/lang/Object;)V

    goto :goto_5

    :cond_a
    :goto_4
    const-string v7, "Bundle returned from getPurchase() doesn\'t contain required fields."

    invoke-static {v12, v7}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, LE1/t;

    const/16 v8, 0x37

    invoke-direct {v7, v8, v13, v11}, LE1/t;-><init>(IILjava/lang/Object;)V

    :goto_5
    iget-object v8, v7, LE1/t;->r:Ljava/lang/Object;

    check-cast v8, LE1/f;

    sget-object v9, LE1/B;->j:LE1/f;

    if-eq v8, v9, :cond_b

    iget v0, v7, LE1/t;->q:I

    const-string v4, "Purchase bundle invalid"

    invoke-virtual {v2, v8, v0, v4, v3}, LE1/b;->q(LE1/f;ILjava/lang/String;Ljava/lang/Exception;)LA/j;

    move-result-object v0

    goto/16 :goto_1

    :cond_b
    const-string v7, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    const-string v8, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    const-string v9, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v10, 0x0

    move v11, v10

    move v12, v11

    :goto_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v11, v13, :cond_d

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v3

    const-string v3, "Sku is owned: "

    const-string v5, "BillingClient"

    invoke-virtual {v3, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/play_billing/o0;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_3
    new-instance v3, Lcom/android/billingclient/api/Purchase;

    invoke-direct {v3, v13, v14}, Lcom/android/billingclient/api/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    iget-object v5, v3, Lcom/android/billingclient/api/Purchase;->c:Lorg/json/JSONObject;

    const-string v13, "purchaseToken"

    const-string v14, "token"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v14, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "BillingClient"

    const-string v12, "BUG: empty/null token!"

    invoke-static {v5, v12}, Lcom/google/android/gms/internal/play_billing/o0;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x1

    :cond_c
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v16

    const/4 v5, 0x1

    goto :goto_6

    :catch_2
    move-exception v0

    const-string v3, "Got an exception trying to decode the purchase!"

    sget-object v4, LE1/B;->i:LE1/f;

    const/16 v5, 0x33

    invoke-virtual {v2, v4, v5, v3, v0}, LE1/b;->q(LE1/f;ILjava/lang/String;Ljava/lang/Exception;)LA/j;

    move-result-object v0

    goto :goto_a

    :cond_d
    move-object/from16 v16, v3

    if-eqz v12, :cond_e

    const/16 v3, 0x1a

    sget-object v5, LE1/B;->i:LE1/f;

    const/16 v7, 0x9

    invoke-virtual {v2, v3, v7, v5}, LE1/b;->u(IILE1/f;)V

    :cond_e
    const-string v3, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v6, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "Continuation token: "

    const-string v7, "BillingClient"

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/google/android/gms/internal/play_billing/o0;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    new-instance v2, LA/j;

    sget-object v3, LE1/B;->j:LE1/f;

    const/16 v7, 0x9

    invoke-direct {v2, v3, v0, v7, v10}, LA/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    move-object v0, v2

    goto :goto_a

    :cond_f
    move-object/from16 v3, v16

    const/4 v5, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v16, v3

    :goto_7
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_7

    :goto_8
    const-string v3, "Got exception trying to get purchases try to reconnect"

    sget-object v4, LE1/B;->i:LE1/f;

    invoke-virtual {v2, v4, v7, v3, v0}, LE1/b;->q(LE1/f;ILjava/lang/String;Ljava/lang/Exception;)LA/j;

    move-result-object v0

    goto :goto_a

    :goto_9
    const-string v3, "Got exception trying to get purchases try to reconnect"

    sget-object v4, LE1/B;->k:LE1/f;

    invoke-virtual {v2, v4, v7, v3, v0}, LE1/b;->q(LE1/f;ILjava/lang/String;Ljava/lang/Exception;)LA/j;

    move-result-object v0

    :goto_a
    iget-object v2, v0, LA/j;->q:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_10

    iget-object v3, v1, LE1/o;->a:Lib/player/base/helper/a;

    iget-object v0, v0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, LE1/f;

    invoke-virtual {v3, v0, v2}, Lib/player/base/helper/a;->c(LE1/f;Ljava/util/List;)V

    goto :goto_b

    :cond_10
    iget-object v2, v1, LE1/o;->a:Lib/player/base/helper/a;

    iget-object v0, v0, LA/j;->r:Ljava/lang/Object;

    check-cast v0, LE1/f;

    sget-object v3, Lcom/google/android/gms/internal/play_billing/C;->q:Lcom/google/android/gms/internal/play_billing/z;

    sget-object v3, Lcom/google/android/gms/internal/play_billing/Q;->t:Lcom/google/android/gms/internal/play_billing/Q;

    invoke-virtual {v2, v0, v3}, Lib/player/base/helper/a;->c(LE1/f;Ljava/util/List;)V

    :goto_b
    return-object v16
.end method
