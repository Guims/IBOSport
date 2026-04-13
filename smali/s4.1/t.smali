.class public final synthetic Ls4/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic q:Ls4/w;

.field public final synthetic r:I


# direct methods
.method public synthetic constructor <init>(Ls4/w;II)V
    .locals 0

    iput p3, p0, Ls4/t;->b:I

    iput-object p1, p0, Ls4/t;->q:Ls4/w;

    iput p2, p0, Ls4/t;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Ls4/t;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Ls4/t;->q:Ls4/w;

    iget-object v0, p1, Ls4/w;->f:LB4/d;

    iget-object p1, p1, Ls4/w;->d:Ljava/util/List;

    iget v1, p0, Ls4/t;->r:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lib/player/models/AppInfoModel$UrlModel;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1, v2}, LB4/d;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    iget-object p1, p0, Ls4/t;->q:Ls4/w;

    iget-object p1, p1, Ls4/w;->f:LB4/d;

    iget v0, p0, Ls4/t;->r:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, LB4/d;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
