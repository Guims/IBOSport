.class public final LD4/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LD4/u;->b:I

    iput-object p2, p0, LD4/u;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method private final b(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method

.method private final c(Landroid/widget/AdapterView;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget p1, p0, LD4/u;->b:I

    const/4 p2, 0x1

    iget-object p4, p0, LD4/u;->q:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    const/4 p1, -0x1

    if-eq p3, p1, :cond_0

    check-cast p4, Lk/A0;

    iget-object p1, p4, Lk/A0;->r:Lk/o0;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lk/o0;->setListSelectionHidden(Z)V

    :cond_0
    return-void

    :pswitch_0
    check-cast p4, Lib/player/pages/series/j;

    sget-object p1, Lib/player/pages/series/j;->D0:Ljava/util/ArrayList;

    iget-object p1, p4, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    iget-object p1, p1, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/SharedPreferences;

    const-string p5, "series_order"

    invoke-interface {p1, p5, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, p3, :cond_1

    iget-object p1, p4, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    iget-object p1, p1, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p5, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p1, LB4/o;

    const/4 p2, 0x5

    invoke-direct {p1, p2, p4}, LB4/o;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p4, p1}, Lib/player/pages/series/j;->Y(LB4/o;)V

    :cond_1
    return-void

    :pswitch_1
    check-cast p4, LD4/x;

    sget-object p1, LD4/x;->D0:Ljava/util/ArrayList;

    iget-object p1, p4, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    iget-object p1, p1, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/SharedPreferences;

    const-string p5, "vod_order"

    invoke-interface {p1, p5, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, p3, :cond_2

    iget-object p1, p4, Lib/player/base/BaseFragment;->j0:Lib/player/base/helper/w;

    iget-object p1, p1, Lib/player/base/helper/w;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p5, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p1, LB4/a;

    const/4 p2, 0x2

    const/4 p3, 0x0

    invoke-direct {p1, p4, p3, p2}, LB4/a;-><init>(Lib/player/base/BaseFragment;Ljava/lang/Object;I)V

    invoke-virtual {p4, p1}, LD4/x;->a0(LB4/a;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    iget p1, p0, LD4/u;->b:I

    return-void
.end method
