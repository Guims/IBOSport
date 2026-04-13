.class public final synthetic Ls4/K;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic b:Lr1/i;

.field public final synthetic q:I


# direct methods
.method public synthetic constructor <init>(Lr1/i;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls4/K;->b:Lr1/i;

    iput p2, p0, Ls4/K;->q:I

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object p1, p0, Ls4/K;->b:Lr1/i;

    iget-object p2, p1, Lr1/i;->g:Ljava/lang/Object;

    check-cast p2, LB4/d;

    iget-object p1, p1, Lr1/i;->f:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget v0, p0, Ls4/K;->q:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/base/p;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1, v0, v1}, LB4/d;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
