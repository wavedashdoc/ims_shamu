.class public Lorg/codeaurora/ims/ImsService$imsMMTelFeature;
.super Landroid/telephony/ims/compat/feature/MMTelFeature;
.source "ImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "imsMMTelFeature"
.end annotation


# static fields
.field private static final serviceClass:I = 0x1


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsService;


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/ImsService;Landroid/content/Context;I)V
    .locals 1

    .line 99
    iput-object p1, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-direct {p0}, Landroid/telephony/ims/compat/feature/MMTelFeature;-><init>()V

    .line 100
    invoke-virtual {p0, p2}, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->setContext(Landroid/content/Context;)V

    .line 101
    invoke-virtual {p0, p3}, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->setSlotId(I)V

    .line 102
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->setFeatureState(I)V

    .line 103
    const-string p1, "imsMMTelFeature"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSlotId: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method


# virtual methods
.method public addRegistrationListener(Lcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 2

    .line 208
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$000(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/ImsServiceSub;->addRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 209
    return-void
.end method

.method public createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;
    .locals 3

    .line 155
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "createCallProfile"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 157
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->createCallProfile(III)Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    return-object p1

    .line 160
    :cond_0
    const-string p1, "ImsService"

    const-string p2, "Invalid ServiceId "

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 p1, 0x0

    return-object p1
.end method

.method public createCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;
    .locals 3

    .line 165
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "createCallSession"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 167
    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0, p1, p2, p3}, Lorg/codeaurora/ims/ImsServiceSub;->createCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object p1

    return-object p1

    .line 170
    :cond_0
    const-string p1, "ImsService"

    const-string p2, "Invalid ServiceId "

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 p1, 0x0

    return-object p1
.end method

.method public endSession(I)V
    .locals 2

    .line 119
    iget-object p1, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v0, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v1, "close"

    invoke-virtual {p1, v0, v1}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public getConfigInterface()Lcom/android/ims/internal/IImsConfig;
    .locals 3

    .line 200
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v2, "getConfigInterface"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "getConfigInterface"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$000(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;

    move-result-object v0

    return-object v0
.end method

.method public getEcbmInterface()Landroid/telephony/ims/stub/ImsEcbmImplBase;
    .locals 4

    .line 222
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "getEcbmInterface"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 224
    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getEcbmInterface()Landroid/telephony/ims/stub/ImsEcbmImplBase;

    move-result-object v0

    return-object v0

    .line 227
    :cond_0
    const-string v1, "ImsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEcbmInterface: Invalid argument "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMultiEndpointInterface()Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
    .locals 1

    .line 242
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPendingCallSession(ILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 3

    .line 175
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "getPendingCallSession"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 177
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 178
    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->getPendingSession(ILjava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object p1

    return-object p1

    .line 180
    :cond_0
    const-string p1, "ImsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid arguments "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 p1, 0x0

    return-object p1
.end method

.method public getUtInterface()Landroid/telephony/ims/stub/ImsUtImplBase;
    .locals 4

    .line 186
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v2, "getUtInterface"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "getUtInterface"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 191
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getUtInterface()Lorg/codeaurora/ims/ImsUtImpl;

    move-result-object v0

    return-object v0

    .line 194
    :cond_0
    const-string v1, "ImsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid argument "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public isConnected(II)Z
    .locals 1

    .line 124
    :try_start_0
    iget-object p1, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string p2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v0, "isConnected"

    invoke-virtual {p1, p2, v0}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_0

    .line 125
    :catch_0
    move-exception p1

    .line 126
    iget-object p1, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string p2, "android.permission.READ_PHONE_STATE"

    const-string v0, "isConnected"

    invoke-virtual {p1, p2, v0}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isOpened()Z
    .locals 3

    .line 133
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v2, "isOpened"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "isOpened"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V
    .locals 3

    .line 142
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v2, "setRegistrationListener"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "setRegistrationListener"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 147
    if-nez v0, :cond_0

    .line 148
    const-string p1, "ImsService"

    const-string p2, "Invalid ServiceId "

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 150
    :cond_0
    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->setRegistrationListener(ILcom/android/ims/internal/IImsRegistrationListener;)V

    .line 152
    :goto_1
    return-void
.end method

.method public setUiTTYMode(ILandroid/os/Message;)V
    .locals 3

    .line 232
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setUiTTYMode"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    .line 234
    if-nez v0, :cond_0

    .line 235
    const-string p1, "ImsService"

    const-string p2, "Invalid arguments 1"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {v0, v2, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->setUiTTYMode(IILandroid/os/Message;)V

    .line 239
    :goto_0
    return-void
.end method

.method public startSession(Landroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I
    .locals 3

    .line 107
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "startSession"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$000(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, p2}, Lorg/codeaurora/ims/ImsServiceSub;->getServiceId(ILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result p1

    .line 109
    if-lez p1, :cond_0

    .line 110
    iget-object p2, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {p2}, Lorg/codeaurora/ims/ImsService;->access$100(Lorg/codeaurora/ims/ImsService;)Ljava/util/Map;

    move-result-object p2

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iget-object v2, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsService;->access$000(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_0
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object p2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$000(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {p2, v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->setActiveSub(Lorg/codeaurora/ims/ImsServiceSub;)V

    .line 113
    iget-object p2, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {p2}, Lorg/codeaurora/ims/ImsService;->access$000(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object p2

    aget-object p2, p2, v1

    invoke-virtual {p2}, Lorg/codeaurora/ims/ImsServiceSub;->setRegistrants()V

    .line 114
    const-string p2, "ImsService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Open returns serviceId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return p1
.end method

.method public turnOffIms()V
    .locals 3

    .line 217
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "turnOffIms"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$000(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->turnOffIms()V

    .line 219
    return-void
.end method

.method public turnOnIms()V
    .locals 3

    .line 212
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "turnOnIms"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lorg/codeaurora/ims/ImsService$imsMMTelFeature;->this$0:Lorg/codeaurora/ims/ImsService;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsService;->access$000(Lorg/codeaurora/ims/ImsService;)[Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->turnOnIms()V

    .line 214
    return-void
.end method
