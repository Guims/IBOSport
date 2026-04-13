.class public final Lm5/b;
.super Ljava/lang/Object;

# interfaces
.implements Lm5/d0;


# static fields
.field public static final b:Lm5/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm5/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lm5/b;->b:Lm5/b;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Active"

    return-object v0
.end method
