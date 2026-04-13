.class public final LT/i;
.super LX4/c;


# instance fields
.field public b:LK1/c;

.field public synthetic q:Ljava/lang/Object;

.field public final synthetic r:LK1/c;

.field public s:I


# direct methods
.method public constructor <init>(LK1/c;LX4/c;)V
    .locals 0

    iput-object p1, p0, LT/i;->r:LK1/c;

    invoke-direct {p0, p2}, LX4/c;-><init>(LV4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LT/i;->q:Ljava/lang/Object;

    iget p1, p0, LT/i;->s:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LT/i;->s:I

    iget-object p1, p0, LT/i;->r:LK1/c;

    invoke-virtual {p1, p0}, LK1/c;->i(LX4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
