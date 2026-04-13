.class public final Lq5/h;
.super Ljava/lang/Object;

# interfaces
.implements LV4/d;


# static fields
.field public static final b:Lq5/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq5/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lq5/h;->b:Lq5/h;

    return-void
.end method


# virtual methods
.method public final getContext()LV4/i;
    .locals 1

    sget-object v0, LV4/j;->b:LV4/j;

    return-object v0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
