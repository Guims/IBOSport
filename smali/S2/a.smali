.class public final LS2/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:I

.field public final synthetic r:Ljava/lang/Object;

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LS2/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS2/a;->r:Ljava/lang/Object;

    iput-object p2, p0, LS2/a;->s:Ljava/lang/Object;

    iput p3, p0, LS2/a;->q:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/activity/f;ILjava/lang/Object;I)V
    .locals 0

    iput p4, p0, LS2/a;->b:I

    iput-object p1, p0, LS2/a;->s:Ljava/lang/Object;

    iput p2, p0, LS2/a;->q:I

    iput-object p3, p0, LS2/a;->r:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LS2/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS2/a;->s:Ljava/lang/Object;

    iput-object p2, p0, LS2/a;->r:Ljava/lang/Object;

    iput p3, p0, LS2/a;->q:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, LS2/a;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LS2/a;->r:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, LS2/a;->s:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Typeface;

    iget v2, p0, LS2/a;->q:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, LS2/a;->s:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/f;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, LS2/a;->r:Ljava/lang/Object;

    check-cast v2, Landroid/content/IntentSender$SendIntentException;

    const-string v3, "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, LS2/a;->q:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroidx/activity/result/g;->a(IILandroid/content/Intent;)Z

    return-void

    :pswitch_1
    iget-object v0, p0, LS2/a;->s:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/f;

    iget-object v1, p0, LS2/a;->r:Ljava/lang/Object;

    check-cast v1, Ld/a;

    iget-object v1, v1, Ld/a;->b:Ljava/lang/Object;

    iget-object v2, v0, Landroidx/activity/result/g;->a:Ljava/util/HashMap;

    iget v3, p0, LS2/a;->q:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Landroidx/activity/result/g;->e:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/activity/result/e;

    if-eqz v3, :cond_1

    iget-object v3, v3, Landroidx/activity/result/e;->a:Landroidx/activity/result/b;

    iget-object v0, v0, Landroidx/activity/result/g;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3, v1}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v3, v0, Landroidx/activity/result/g;->g:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/activity/result/g;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void

    :pswitch_2
    iget-object v0, p0, LS2/a;->s:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-object v1, p0, LS2/a;->r:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget v2, p0, LS2/a;->q:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E(Landroid/view/View;IZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
