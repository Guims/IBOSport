.class public final LD4/w;
.super Ljava/lang/Object;

# interfaces
.implements Lio/realm/H;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ld5/a;

.field public final synthetic c:Lib/player/base/BaseFragment;


# direct methods
.method public synthetic constructor <init>(Lib/player/base/BaseFragment;Ld5/a;I)V
    .locals 0

    iput p3, p0, LD4/w;->a:I

    iput-object p1, p0, LD4/w;->c:Lib/player/base/BaseFragment;

    iput-object p2, p0, LD4/w;->b:Ld5/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, LD4/w;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lio/realm/T;

    iget-object v0, p0, LD4/w;->c:Lib/player/base/BaseFragment;

    check-cast v0, Lib/player/pages/series/j;

    iget-object v0, v0, Lib/player/pages/series/j;->o0:Ls4/J;

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Ls4/J;->d:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ls4/J;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Ls4/J;->g:Lio/realm/OrderedRealmCollection;

    invoke-virtual {v0, v1}, Ls4/J;->n(Lio/realm/OrderedRealmCollection;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Ls4/J;->k(Lio/realm/OrderedRealmCollection;)V

    :cond_1
    iput-object p1, v0, Ls4/J;->g:Lio/realm/OrderedRealmCollection;

    invoke-virtual {v0}, Lv1/y;->d()V

    :cond_2
    iget-object p1, p0, LD4/w;->b:Ld5/a;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ld5/a;->b()Ljava/lang/Object;

    :cond_3
    return-void

    :pswitch_0
    check-cast p1, Lio/realm/T;

    iget-object v0, p0, LD4/w;->c:Lib/player/base/BaseFragment;

    check-cast v0, LD4/x;

    iget-object v0, v0, LD4/x;->o0:Ls4/J;

    if-eqz v0, :cond_6

    iget-boolean v1, v0, Ls4/J;->d:Z

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ls4/J;->m()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Ls4/J;->g:Lio/realm/OrderedRealmCollection;

    invoke-virtual {v0, v1}, Ls4/J;->n(Lio/realm/OrderedRealmCollection;)V

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {v0, p1}, Ls4/J;->k(Lio/realm/OrderedRealmCollection;)V

    :cond_5
    iput-object p1, v0, Ls4/J;->g:Lio/realm/OrderedRealmCollection;

    invoke-virtual {v0}, Lv1/y;->d()V

    :cond_6
    iget-object p1, p0, LD4/w;->b:Ld5/a;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ld5/a;->b()Ljava/lang/Object;

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
