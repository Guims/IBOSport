.class public final Lp5/m;
.super LX4/c;


# instance fields
.field public b:Lp5/n;

.field public q:Ljava/lang/Object;

.field public synthetic r:Ljava/lang/Object;

.field public final synthetic s:Lp5/n;

.field public t:I


# direct methods
.method public constructor <init>(Lp5/n;LV4/d;)V
    .locals 0

    iput-object p1, p0, Lp5/m;->s:Lp5/n;

    invoke-direct {p0, p2}, LX4/c;-><init>(LV4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lp5/m;->r:Ljava/lang/Object;

    iget p1, p0, Lp5/m;->t:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lp5/m;->t:I

    iget-object p1, p0, Lp5/m;->s:Lp5/n;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lp5/n;->a(Ljava/lang/Object;LV4/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
