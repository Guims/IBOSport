.class public final Landroidx/activity/m;
.super Le5/h;

# interfaces
.implements Ld5/a;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Landroidx/activity/t;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/t;I)V
    .locals 0

    iput p2, p0, Landroidx/activity/m;->b:I

    iput-object p1, p0, Landroidx/activity/m;->q:Landroidx/activity/t;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Le5/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Landroidx/activity/m;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/activity/m;->q:Landroidx/activity/t;

    invoke-virtual {v0}, Landroidx/activity/t;->b()V

    sget-object v0, LS4/i;->a:LS4/i;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Landroidx/activity/m;->q:Landroidx/activity/t;

    iget-object v1, v0, Landroidx/activity/t;->b:LT4/e;

    invoke-virtual {v1}, LT4/e;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroidx/fragment/app/B;

    iget-boolean v4, v4, Landroidx/fragment/app/B;->a:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    check-cast v2, Landroidx/fragment/app/B;

    iput-object v3, v0, Landroidx/activity/t;->c:Landroidx/fragment/app/B;

    sget-object v0, LS4/i;->a:LS4/i;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Landroidx/activity/m;->q:Landroidx/activity/t;

    invoke-virtual {v0}, Landroidx/activity/t;->b()V

    sget-object v0, LS4/i;->a:LS4/i;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
