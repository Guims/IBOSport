.class public final Lp5/k;
.super LX4/c;


# instance fields
.field public b:Lp5/l;

.field public synthetic q:Ljava/lang/Object;

.field public final synthetic r:Lp5/l;

.field public s:I


# direct methods
.method public constructor <init>(Lp5/l;LV4/d;)V
    .locals 0

    iput-object p1, p0, Lp5/k;->r:Lp5/l;

    invoke-direct {p0, p2}, LX4/c;-><init>(LV4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lp5/k;->q:Ljava/lang/Object;

    iget p1, p0, Lp5/k;->s:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lp5/k;->s:I

    iget-object p1, p0, Lp5/k;->r:Lp5/l;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lp5/l;->a(Ljava/lang/Object;LV4/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
