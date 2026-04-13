.class public final synthetic Ls4/A;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic b:Lr1/i;

.field public final synthetic q:Lib/player/models/EPGChannel;

.field public final synthetic r:I


# direct methods
.method public synthetic constructor <init>(Lr1/i;Lib/player/models/EPGChannel;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls4/A;->b:Lr1/i;

    iput-object p2, p0, Ls4/A;->q:Lib/player/models/EPGChannel;

    iput p3, p0, Ls4/A;->r:I

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    iget-object p1, p0, Ls4/A;->b:Lr1/i;

    iget-object p1, p1, Lr1/i;->h:Ljava/lang/Object;

    check-cast p1, LA4/b;

    iget v0, p0, Ls4/A;->r:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Ls4/A;->q:Lib/player/models/EPGChannel;

    invoke-virtual {p1, v3, v0, v1, v2}, LA4/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method
