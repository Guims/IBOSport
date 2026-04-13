.class public final Lp5/q;
.super LX4/c;


# instance fields
.field public b:Lp5/l;

.field public synthetic q:Ljava/lang/Object;

.field public r:I

.field public final synthetic s:Lp5/l;

.field public t:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lp5/l;LV4/d;)V
    .locals 0

    iput-object p1, p0, Lp5/q;->s:Lp5/l;

    invoke-direct {p0, p2}, LX4/c;-><init>(LV4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lp5/q;->q:Ljava/lang/Object;

    iget p1, p0, Lp5/q;->r:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lp5/q;->r:I

    iget-object p1, p0, Lp5/q;->s:Lp5/l;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lp5/l;->a(Ljava/lang/Object;LV4/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
