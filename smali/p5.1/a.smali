.class public final Lp5/a;
.super LX4/c;


# instance fields
.field public b:Lq5/k;

.field public synthetic q:Ljava/lang/Object;

.field public final synthetic r:Lcom/bumptech/glide/f;

.field public s:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/f;LX4/c;)V
    .locals 0

    iput-object p1, p0, Lp5/a;->r:Lcom/bumptech/glide/f;

    invoke-direct {p0, p2}, LX4/c;-><init>(LV4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lp5/a;->q:Ljava/lang/Object;

    iget p1, p0, Lp5/a;->s:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lp5/a;->s:I

    iget-object p1, p0, Lp5/a;->r:Lcom/bumptech/glide/f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/bumptech/glide/f;->h(Lp5/c;LX4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
