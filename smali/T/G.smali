.class public final LT/G;
.super LX4/c;


# instance fields
.field public b:Le5/k;

.field public synthetic q:Ljava/lang/Object;

.field public final synthetic r:LT/I;

.field public s:I


# direct methods
.method public constructor <init>(LT/I;LX4/c;)V
    .locals 0

    iput-object p1, p0, LT/G;->r:LT/I;

    invoke-direct {p0, p2}, LX4/c;-><init>(LV4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, LT/G;->q:Ljava/lang/Object;

    iget p1, p0, LT/G;->s:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LT/G;->s:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, LT/G;->r:LT/I;

    invoke-virtual {v1, p1, v0, p0}, LT/I;->j(Ljava/lang/Object;ZLX4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
