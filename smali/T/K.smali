.class public final LT/K;
.super Ljava/lang/Object;


# instance fields
.field public final a:LX4/g;

.field public final b:Lm5/l;

.field public final c:LT/T;

.field public final d:LV4/i;


# direct methods
.method public constructor <init>(Ld5/p;Lm5/l;LT/T;LV4/i;)V
    .locals 1

    const-string v0, "callerContext"

    invoke-static {p4, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, LX4/g;

    iput-object p1, p0, LT/K;->a:LX4/g;

    iput-object p2, p0, LT/K;->b:Lm5/l;

    iput-object p3, p0, LT/K;->c:LT/T;

    iput-object p4, p0, LT/K;->d:LV4/i;

    return-void
.end method
