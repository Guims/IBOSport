.class public final Lq5/o;
.super Ljava/lang/Object;

# interfaces
.implements Lp5/c;


# instance fields
.field public final b:Lo5/p;


# direct methods
.method public constructor <init>(Lo5/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq5/o;->b:Lo5/p;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;LV4/d;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lq5/o;->b:Lo5/p;

    invoke-interface {v0, p2, p1}, Lo5/p;->c(LV4/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, LW4/a;->b:LW4/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, LS4/i;->a:LS4/i;

    return-object p1
.end method
