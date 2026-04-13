.class public final LT/w;
.super LX4/c;


# instance fields
.field public b:Ljava/lang/Object;

.field public q:LT/I;

.field public r:Lm5/l;

.field public synthetic s:Ljava/lang/Object;

.field public final synthetic t:LT/I;

.field public u:I


# direct methods
.method public constructor <init>(LT/I;LX4/c;)V
    .locals 0

    iput-object p1, p0, LT/w;->t:LT/I;

    invoke-direct {p0, p2}, LX4/c;-><init>(LV4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LT/w;->s:Ljava/lang/Object;

    iget p1, p0, LT/w;->u:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LT/w;->u:I

    iget-object p1, p0, LT/w;->t:LT/I;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, LT/I;->c(LT/I;LT/K;LX4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
