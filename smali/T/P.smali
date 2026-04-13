.class public final LT/P;
.super LX4/c;


# instance fields
.field public b:Lu5/d;

.field public q:Z

.field public synthetic r:Ljava/lang/Object;

.field public final synthetic s:LT/S;

.field public t:I


# direct methods
.method public constructor <init>(LT/S;LX4/c;)V
    .locals 0

    iput-object p1, p0, LT/P;->s:LT/S;

    invoke-direct {p0, p2}, LX4/c;-><init>(LV4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, LT/P;->r:Ljava/lang/Object;

    iget p1, p0, LT/P;->t:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, LT/P;->t:I

    iget-object p1, p0, LT/P;->s:LT/S;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, LT/S;->c(Ld5/p;LX4/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
